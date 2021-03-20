
import { promises as fs } from 'fs';
import { dirname } from 'path';
import { fileURLToPath } from 'url';
import {joinSrtBlockParts, parseSrtSentence} from "../public/modules/SrtUtils.js";

const __dirname = dirname(fileURLToPath(import.meta.url));

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
            throw new Error('Missing translation for: ' + japLine + ' at block #' + parsedBlock.index + ' dir: ' + chapterDir);
        }
        parsedBlock.sentence = japToEng
            .get(japLine.trim())
            // tags have special meaning in srt apparently
            .replace(/^\s*<</, '《')
            .replace(/>>$/, '》')
            // fixing google translate artifacts on some input
            .replace(/^\s*"(.*)》/, '《$1》')
            .replace(/^\s*《(.*)"/, '《$1》')
        ;

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

const locations = [
    [__dirname + '/../assets/chapter3', 'game_recording_during_h'],
    [__dirname + '/../assets/recordings/ayane_route', 'game_recording_after_h2'],
    [__dirname + '/../assets/recordings/ayane_route_end'],
    [__dirname + '/../assets/recordings/ootori_route/rec1'],
    [__dirname + '/../assets/recordings/ootori_route/rec2'],
    [__dirname + '/../assets/recordings/ootori_route/rec3'],
    [__dirname + '/../assets/recordings/ootori_route/rec4'],
    [__dirname + '/../assets/recordings/ootori_route/rec4', 'game_recording_after_h'],
    [__dirname + '/../assets/recordings/devil_route/rec1'],
    [__dirname + '/../assets/recordings/devil_route/rec2'],
    [__dirname + '/../assets/recordings/devil_route/rec3'],
    [__dirname + '/../assets/recordings/devil_route/rec3', 'game_recording_during_h'],
    [__dirname + '/../assets/recordings/devil_route/rec3', 'game_recording_after_h'],
    [__dirname + '/../assets/recordings/devil_route/rec4'],
    [__dirname + '/../assets/recordings/devil_route/rec5'],
    [__dirname + '/../assets/recordings/devil_route/rec6'],
    [__dirname + '/../assets/recordings/devil_route/rec7'],
    [__dirname + '/../assets/recordings/devil_route/rec8'],
    [__dirname + '/../assets/recordings/devil_route/rec8', 'game_recording_after_h'],
];

const main = async () => {
    for (const [chapterDir, fileNameRoot] of locations) {
        await translateAt({chapterDir, fileNameRoot});
    }
};

main().catch(exc => {
    console.error(exc);
    process.exit(1);
});
