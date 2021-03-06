
import { promises as fs } from 'fs';
import { dirname } from 'path';
import { fileURLToPath } from 'url';
import {joinSrtBlockParts, makeSrtTimestamp, parseSrtSentence} from "./utils.js";

const __dirname = dirname(fileURLToPath(import.meta.url));

/**
 * video is teensy little bit slower than subs, and that's annoying
 * when subs appear a moment before, so fixing it with an artificial delay
 */
const chapterDir = __dirname + '/../assets/recordings/ayane_route';
const translatedSentencesPath = chapterDir + '/translated_sentences.txt';
const srcSrtPath = chapterDir + '/game_recording.jpn.srt';
const outSrtPath = chapterDir + '/game_recording.eng.srt';

const main = async () => {
    const translatedSentencesText = await fs.readFile(translatedSentencesPath, 'utf8');
    const srcSrtText = await fs.readFile(srcSrtPath, 'utf8');

    const japToEng = new Map(
        translatedSentencesText
            .trim().split(/(?:\r\n|\n){2}/)
            .map(lineTranslationText => {
                return lineTranslationText
                    .split(/(?:\r\n|\n)/)
                    .map(l => l.trim());
            })
    );

    const translateBlock = parsedBlock => {
        const japLine = parsedBlock.sentence;
        if (!japToEng.get(japLine.trim())) {
            throw new Error('Missing translation for: ' + japLine);
        }
        parsedBlock.sentence = japToEng
            .get(japLine.trim())
            // tags have special meaning in srt apparently
            .replace(/^\s*<</, '《')
            .replace(/>>$/, '》');

        return parsedBlock;
    };

    const translatedSrt = srcSrtText
        .trim().split(/\n\n/)
        .map(parseSrtSentence)
        .map(translateBlock)
        .map(joinSrtBlockParts)
        .join('\n\n');

    await fs.writeFile(outSrtPath, translatedSrt);
};

main().catch(exc => {
    console.error(exc);
    process.exit(1);
});
