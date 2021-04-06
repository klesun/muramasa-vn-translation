
import { promises as fs } from 'fs';
import {CHAPTER5_REC1_DIR, HERO_ROUTE_REC1_DIR, RECORDING_LOCATIONS} from "../backend/assets_index.js";

import { dirname } from 'path';
import { fileURLToPath } from 'url';
import {joinSrtBlockParts, parseSrtSentence} from "../public/modules/SrtUtils.js";
import {allocateBetweenKeyframes} from "../public/modules/GareLinker.js";
const __dirname = dirname(fileURLToPath(import.meta.url));

const addGarejeiAt = async (dirPath, gareDir) => {
    const adminKeyframesStr = await fs.readFile(gareDir + '/adminKeyframes.json');
    const garejeiKeyframes_fixedStr = await fs.readFile(gareDir + '/autoKeyframes.json');
    const gareBlocksStr = await fs.readFile(gareDir + '/../garejeiBlocks.json');
    const srcSrtStr = await fs.readFile(dirPath + '/game_recording.eng.srt', 'utf8');

    const autoKeyframes = JSON.parse(garejeiKeyframes_fixedStr);
    const garejeiBlocks = JSON.parse(gareBlocksStr);
    const adminKeyframes = JSON.parse(adminKeyframesStr + 'null]').slice(0, -1);
    const adminIndexes = new Set(adminKeyframes.map(kf => kf.garejeiIndex));
    const keyframes = [...autoKeyframes.filter(kf => !adminIndexes.has(kf.garejeiIndex)), ...adminKeyframes];
    const srcSrtBlocks = srcSrtStr
        .trim().split(/\n\n/)
        .map(parseSrtSentence);
    const outSrtBlocks = allocateBetweenKeyframes({garejeiBlocks, keyframes, srcSrtBlocks});

    const outSrt = outSrtBlocks
        .map(joinSrtBlockParts)
        .join('\n\n');

    await fs.writeFile(dirPath + '/game_recording_gare.eng.srt', outSrt);
};

const dirPaths = new Set(RECORDING_LOCATIONS.map(l => l[0]));

const dirPathToGareDir = {
    // [CHAPTER5_REC1_DIR]: CHAPTER5_REC1_DIR
    [HERO_ROUTE_REC1_DIR]: HERO_ROUTE_REC1_DIR,
};

const main = async () => {
    for (const dirPath of dirPaths) {
        const gareDir = dirPathToGareDir[dirPath];
        if (gareDir) {
            await addGarejeiAt(dirPath, gareDir);
            console.log('Added Garejei at ' + dirPath);
        }
    }
};

main().catch(exc => {
    console.error(exc);
    process.exit(1);
});
