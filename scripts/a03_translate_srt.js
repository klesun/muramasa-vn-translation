
import { promises as fs } from 'fs';
import {joinSrtBlockParts} from "../public/node_modules/vn-translation-tools/public/modules/SrtUtils.js";
import {getTranslatedSrt, RECORDING_LOCATIONS} from "../backend/assets_index.js";

const translateAt = async ({
    chapterDir,
    fileNameRoot = 'game_recording',
}) => {
    const outSrtPath = chapterDir + '/' + fileNameRoot + '.eng.srt';
    const translatedSrtBlocks = await getTranslatedSrt(chapterDir, fileNameRoot);

    const translatedSrt = translatedSrtBlocks
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
