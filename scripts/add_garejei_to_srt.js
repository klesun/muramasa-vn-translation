
import { promises as fs } from 'fs';
import {CHAPTER5_REC1_DIR, RECORDING_LOCATIONS} from "../assets/assets_index.js";

import { dirname } from 'path';
import { fileURLToPath } from 'url';
import {joinSrtBlockParts, parseSrtSentence} from "../public/modules/SrtUtils.js";
const __dirname = dirname(fileURLToPath(import.meta.url));

const addGarejeiAt = async (dirPath, gareDir) => {
    const adminKeyframesStr = await fs.readFile(gareDir + '/adminKeyframes.json');
    const garejeiKeyframes_fixedStr = await fs.readFile(gareDir + '/garejeiKeyframes_fixed.json');
    const srcSrtText = await fs.readFile(dirPath + '/game_recording.eng.srt', 'utf8');

    const {keyframes, garejeiBlocks} = JSON.parse(garejeiKeyframes_fixedStr);
    const adminKeyframes = JSON.parse(adminKeyframesStr + 'null]').slice(0, -1);
    const srcSrtBlocks = srcSrtText
        .trim().split(/\n\n/)
        .map(parseSrtSentence);

    const gareToKeyframe = new Map(
        [...keyframes, ...adminKeyframes].map(kf => [
            kf.garejeiIndex, kf
        ])
    );
    const outSrtBlocks = [];
    let lastEndGoogleIndex = 1;
    let commentsBuffer = [];
    for (let i = 0; i < garejeiBlocks.length; ++i) {
        const garejeiBlock = garejeiBlocks[i];
        const garejeiIndex = i + 1;
        let displayText = null;
        if ((garejeiBlock.type === 'comment' || garejeiBlock.type === 'unknown') && garejeiBlock.text.trimEnd()) {
            commentsBuffer.push(garejeiBlock.text.trimEnd());
        } else if (garejeiBlock.type === 'innerThought') {
            displayText = garejeiBlock.text;
        } else if (garejeiBlock.type === 'quote') {
            displayText = '"' + garejeiBlock.text + (garejeiBlock.speaker ? '" - ' + garejeiBlock.speaker : '');
        }
        if (displayText) {
            displayText = '🕸 ' + displayText;
            const keyframe = gareToKeyframe.get(garejeiIndex);
            const googleIndex = keyframe ? keyframe.googleIndex : lastEndGoogleIndex;
            outSrtBlocks.push(...srcSrtBlocks.slice(lastEndGoogleIndex -1, googleIndex - 1));
            const rowSpan = keyframe ? keyframe.rowSpan ?? 1 : 1;
            const googleSrt = srcSrtBlocks[googleIndex - 1];
            if (commentsBuffer.length > 0 && googleIndex > 1) {
                srcSrtBlocks[googleIndex - 2].sentence =
                    commentsBuffer.map(s => '🕸 ' + s).join('\n').trimEnd() + '\n🤖 ' +
                    srcSrtBlocks[googleIndex - 2].sentence;
                commentsBuffer = [];
            }
            if (rowSpan === 0) {
                googleSrt.sentence = displayText + '\n🤖 ' + googleSrt.sentence;
                outSrtBlocks.push(googleSrt);
            } else if (rowSpan === 1) {
                googleSrt.sentence = displayText;
                outSrtBlocks.push(googleSrt);
            } else {
                outSrtBlocks.push({
                    index: null,
                    startRelTs: googleSrt.startRelTs,
                    endRelTs: srcSrtBlocks[googleIndex - 1 + rowSpan - 1].endRelTs,
                    sentence: displayText,
                });
            }
            lastEndGoogleIndex = googleIndex + Math.max(rowSpan, 1);
        }
    }
    outSrtBlocks.push(...srcSrtBlocks.slice(lastEndGoogleIndex -1));
    outSrtBlocks.forEach((srtBlock, i) => srtBlock.index = i + 1);

    const outSrt = outSrtBlocks
        .map(joinSrtBlockParts)
        .join('\n\n');

    await fs.writeFile(dirPath + '/game_recording_gare.eng.srt', outSrt);
};

const dirPaths = new Set(RECORDING_LOCATIONS.map(l => l[0]));

const dirPathToGareDir = {
    [CHAPTER5_REC1_DIR]: __dirname + '/../public/assets/chapter5/',
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
