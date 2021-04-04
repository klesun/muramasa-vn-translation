
import { promises as fs } from 'fs';
import {joinSrtBlockParts, parseSentenceTranslationsFile, parseSrtSentence} from "../public/modules/SrtUtils.js";
import {RECORDING_LOCATIONS} from "../backend/assets_index.js";

const translateAt = async ({
    chapterDir,
    fileNameRoot = 'game_recording',
}) => {
    const translatedSentencesPath = chapterDir + '/translated_sentences.txt';
    const srcSrtPath = chapterDir + '/' + fileNameRoot + '.jpn.srt';
    const outSrtPath = chapterDir + '/' + fileNameRoot + '.eng.srt';

    const translatedSentencesText = await fs.readFile(translatedSentencesPath, 'utf8');
    const srcSrtText = await fs.readFile(srcSrtPath, 'utf8');

    const japToEng = new Map(
        parseSentenceTranslationsFile(translatedSentencesText)
    );

    const translateBlock = parsedBlock => {
        const japLine = parsedBlock.sentence;
        if (!japToEng.get(japLine.trim())) {
            throw new Error('Missing translation for: ' + japLine + ' at block #' + parsedBlock.index + ' dir: ' + chapterDir);
        }
        parsedBlock.sentence = japToEng.get(japLine.trim());

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

const main = async () => {
    for (const [chapterDir, fileNameRoot] of RECORDING_LOCATIONS) {
        await translateAt({chapterDir, fileNameRoot});
    }
};

main().catch(exc => {
    console.error(exc);
    process.exit(1);
});
