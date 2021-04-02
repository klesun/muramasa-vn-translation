
import { promises as fs } from 'fs';
import { dirname } from 'path';
import { fileURLToPath } from 'url';
import FastestLevenshtein from 'fastest-levenshtein';
import jsdom from 'jsdom';
import {joinSrtBlockParts, parseSrtSentence} from "../public/modules/SrtUtils.js";

const __dirname = dirname(fileURLToPath(import.meta.url));
const {distance, closest} = FastestLevenshtein;

/**
 * @module - matches human-translated text from /docs/garejei_mirror
 * to the untranslated japanese text to replace subs in the video to
 * the human translation instead of machine one
 */

const garejeiPath = __dirname + '/../docs/garejei_mirror/Chapter 5 _ gareblogs.htm';
const chapterDir = __dirname + '/../assets/recordings/chapter5';
const translatedSentencesPath = chapterDir + '/translated_sentences.txt';
const srcSrtPath = chapterDir + '/game_recording.jpn.srt';

const parseGarejeiBlock = (p) => {
    const children = [...p.children];
    if (children.length === 0 || children[0] !== p.childNodes[0]) {
        const text = p.textContent;
        const asQuote = text.match(/^(\s*\*.*?\*\s|)([a-zA-Z.…'\/]+(?:\s+[a-zA-Z.'\/]+){0,2})(\s*\*.*?\*\s|):\s*(\S.*)$/s);
        if (asQuote) {
            const [, pretext, speaker, posttext, text] = asQuote;
            return [{
                type: 'quote', speaker, text,
                ...pretext ? {pretext} : {},
                ...posttext ? {posttext} : {},
            }];
        } else {
            return [{type: 'comment', text: p.textContent}];
        }
    } else if (children.every(c => c.tagName === 'EM')) {
        const text = p.textContent.trimEnd();
        return [{type: 'innerThought', text}];
    } else if (children.every(c => c.tagName === 'A' && c.querySelector('img'))) {
        return children.map(c => {
            const img = c.querySelector('img');
            return {type: 'image', src: img.getAttribute('src')};
        });
    } else if (children.every(c => c.tagName === 'A' && c.textContent.trim() === '')) {
        return [{type: 'nbspLinks', nbspLinks: children.map(c => c.getAttribute('href'))}];
    }
    return [{type: 'unknown', innerHTML: p.innerHTML, text: p.textContent}];
};

// TODO: try only compare when same amount of dots with text between them

const normalizeText = (text) => {
    // TODO: HUFFMANNNNNN to make rare words have more weight
    return text.replace(/\s+/g, '').toLowerCase();
};

const main = async () => {
    const translatedSentencesText = await fs.readFile(translatedSentencesPath, 'utf8');
    const srcSrtText = await fs.readFile(srcSrtPath, 'utf8');
    const garejeiHtml = await fs.readFile(garejeiPath, 'utf8');
    const garejeiDom = new jsdom.JSDOM(garejeiHtml);
    const garejeiBlocks = [...garejeiDom.window.document.querySelectorAll('.entry-content > *')]
        .flatMap(parseGarejeiBlock);

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
            .replace(/>>$/, '》')
            // fixing google translate artifacts on some input
            .replace(/^\s*"(.*)》/, '《$1》')
            .replace(/^\s*《(.*)"/, '《$1》')
        ;

        return parsedBlock;
    };

    const srcJpnSrtBlocks = srcSrtText
        .trim().split(/\n\n/)
        .map(parseSrtSentence);
    const translatedSrtBlocks = srcJpnSrtBlocks
        .map(parsedBlock => translateBlock({...parsedBlock}));

    const engToIndex = new Map(
        translatedSrtBlocks.map((b) => [
            b.sentence, b.index,
        ])
    );

    const noSpToSp = new Map(
        translatedSrtBlocks.map(b => b.sentence).map(s => [
            normalizeText(s), s
        ])
    );

    const keyframes = [];

    //console.log('garejeiBlocks', garejeiBlocks.slice(0, 50));
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

    const result = {keyframes, garejeiBlocks};

    await fs.writeFile(chapterDir + '/garejeiKeyframes.json', JSON.stringify(result));
};

main().catch(exc => {
    console.error(exc);
    process.exit(1);
});
