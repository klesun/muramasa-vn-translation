
import { promises as fs } from 'fs';
import { dirname } from 'path';
import { fileURLToPath } from 'url';
import FastestLevenshtein from 'fastest-levenshtein';
import {getTranslatedSrt} from "../backend/assets_index.js";

const __dirname = dirname(fileURLToPath(import.meta.url));
const {distance, closest} = FastestLevenshtein;

/**
 * @module - matches human-translated text from /docs/garejei_mirror
 * to the untranslated japanese text to replace subs in the video to
 * the human translation instead of machine one
 */

const chapterDir = __dirname + '/../public/assets/ma_common_route/ma05_star_craft';

// TODO: try only compare when same amount of dots with text between them

const normalizeText = (text) => {
    // TODO: HUFFMANNNNNN to make rare words have more weight
    return text.replace(/\s+/g, '').toLowerCase();
};

const main = async () => {
    const gareBlocksStr = await fs.readFile(chapterDir + '/garejeiBlocks.json', 'utf8');

    const garejeiBlocks = JSON.parse(gareBlocksStr);
    const translatedSrtBlocks = await getTranslatedSrt(chapterDir);

    const engToIndex = new Map(
        translatedSrtBlocks.map((b) => [
            b.sentence, b.index,
        ])
    );

    const noSpToSp = new Map(
        translatedSrtBlocks.map(b => b.sentence).map(s => [
            normalizeText(s), s,
        ])
    );

    const keyframes = [];

    for (let i = 0; i < garejeiBlocks.length; ++i) {
        const block = garejeiBlocks[i];
        if (block.type === 'quote' || block.type === 'innerThought') {
            const optSet = new Set(noSpToSp.keys());
            const options = [];
            for (let j = 0; j < 2; ++j) {
                const closestEng = closest(normalizeText(block.text), [...optSet]);
                const dist = distance(block.text, closestEng);
                options.push({dist, text: noSpToSp.get(closestEng)});
                optSet.delete(closestEng);
            }
            if (options[1].dist - options[0].dist > 5) {
                const keyframe = {
                    garejeiIndex: i + 1,
                    garejei: block.text,
                    googleIndex: +engToIndex.get(options[0].text),
                    google: options[0].text,
                    dist: options[0].dist,
                    distDiff: options[1].dist - options[0].dist,
                };
                keyframes.push(keyframe);
            }
        }
    }

    await fs.writeFile(chapterDir + '/autoKeyframes.json', JSON.stringify(keyframes, null, 4));
};

main().catch(exc => {
    console.error(exc);
    process.exit(1);
});
