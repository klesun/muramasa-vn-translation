import {promises as fs} from "fs";
import {getTranslatedSrt} from "../backend/assets_index.js";
import {dirname} from "path";
import {fileURLToPath} from "url";

const __dirname = dirname(fileURLToPath(import.meta.url));

/**
 * @module - the plan is:
 * - collect a mapping of all substrings in Gare blog and Google-Translated text and their frequency
 * - iterate through substrings that happen rarely and are present in both gare and google dicts
 * - check with eyes (maybe also show levenshtein) and confirm correct ones and cancel wrong ones
 */

const routeDir = __dirname + '/../public/assets/mb_hero_route';
const recordingDir = routeDir + '/rec1';

const memoizedPrefixes = new Map();

const getPrefixes = (sentence) => {
    if (memoizedPrefixes.has(sentence)) {
        return memoizedPrefixes.get(sentence);
    }
    const prefixes = new Set();
    for (let i = 0; i < sentence.length; ++i) {
        if (i > 0 && sentence[i - 1].match(/[a-zA-Z]/)) {
            continue; // only match word parts from the very start
        }
        for (let length = 3; length <= 24; ++length) {
            const prefix = sentence.slice(i, i + length);
            if (prefix.match(/\s+\S{0,2}$/) && sentence[i + length] && sentence[i + length].match(/[a-zA-Z]/)) {
                continue; // skip if trying to take a cut from the next word smaller than 3 letters
            }
            prefixes.add(prefix);
        }
    }
    memoizedPrefixes.set(sentence, prefixes);
    return prefixes;
};

const getPrefixCounts = (sentences) => {
    const prefixCounts = new Map();
    for (const sentence of sentences) {
        for (const prefix of getPrefixes(sentence)) {
            const cnt = prefixCounts.get(prefix) ?? 0;
            prefixCounts.set(prefix, cnt + 1);
        }
    }
    return prefixCounts;
};

const removeSubs = (prefixes) => {
    const occurred = new Set();
    const noSubs = prefixes
        .sort((a,b) => b.length - a.length)
        .filter(prefix => {
            if (occurred.has(prefix)) {
                return false;
            } else {
                for (let i = 0; i < prefix.length; ++i) {
                    for (let length = 1; length <= prefix.length - i; ++length) {
                        occurred.add(prefix.slice(i, i + length));
                    }
                }
                return true;
            }
        });
    return noSubs;
};

const main = async () => {
    const gareBlocksStr = await fs.readFile(routeDir + '/garejeiBlocks.json', 'utf8');
    let skipRemaining = false;
    const gareBlocks = JSON.parse(gareBlocksStr)
        .filter(b => !skipRemaining && !(skipRemaining = b.text && b.text === '(Yup, this is all I can safely show you.)'));

    let keepSkipping = true;
    const translatedSrtBlocks = (await getTranslatedSrt(recordingDir))
        .filter(b => !keepSkipping || !(keepSkipping = b.sentence !== 'Conquer. To fight the evil of this world.'));

    const googleSentences = translatedSrtBlocks
        .map(b => b.sentence.toLowerCase())
        //.filter(s => s.length > 24)
        ;
    const gareSentences = gareBlocks
        .filter(b => ['innerThought', 'quote'].includes(b.type))
        .map(b => b.text.toLowerCase())
        //.filter(s => s.length > 24)
        ;

    const googleSentenceToIndex = new Map();
    for (let i = 0; i < googleSentences.length; ++i) {
        googleSentenceToIndex.set(googleSentences[i], i);
    }

    const googlePrefixCounts = getPrefixCounts(googleSentences);
    const garePrefixCounts = getPrefixCounts(gareSentences);

    const getPrefixUniquenessScore = prefix => {
        return prefix.length / Math.max(
            Math.min(2, googlePrefixCounts.get(prefix)),
            Math.min(2, garePrefixCounts.get(prefix))
        );
    };

    const getPrefixesUniquenessScore = prefixes => {
        const noSubs = removeSubs(prefixes);
        const score = noSubs
            .map(getPrefixUniquenessScore)
            .reduce((a,b) => a + b, 0);
        return {score, noSubs};
    };

    const getTextLikenessScore = (a, b) => {
        const aPrefixes = getPrefixes(a);
        const bPrefixes = getPrefixes(b);
        const intersection = [];
        for (const aPrefix of aPrefixes) {
            if (bPrefixes.has(aPrefix)) {
                intersection.push(aPrefix);
            }
        }
        const {score, noSubs} = getPrefixesUniquenessScore(intersection);
        return {score, prefixes: noSubs};
    };

    const rawResults = [];
    for (let i = 0; i < gareBlocks.length; ++i) {
        const gareBlock = gareBlocks[i];
        if (!['innerThought', 'quote'].includes(gareBlock.type)) {
            continue;
        }
        const gareUniqueness = getPrefixesUniquenessScore(
            [...getPrefixes(gareBlock.text.toLowerCase())]
                .filter(gare => googlePrefixCounts.has(gare))
        );
        const isQuote = gareBlock.type === 'quote';
        const gareProgress = i / gareBlocks.length;
        console.log(' ' + ('#' + i).padStart(6) + '    ' + String(Math.round(100 * gareProgress)).padStart(3) + '% - ' + gareBlock.text + ' --> ' + gareUniqueness.score.toFixed(2));
        const googleScored = googleSentences
            .filter(sen => !!sen.match(/(^"|"$)/) === isQuote)
            .map(googleSentence => {
                const {score, prefixes} = getTextLikenessScore(gareBlock.text.toLowerCase(), googleSentence);
                const googleIndex = googleSentenceToIndex.get(googleSentence);
                const googleProgress = googleIndex / googleSentences.length;
                const progressDistance = Math.abs(gareProgress - googleProgress);
                // Garejei usually joins multiple sentences together, and very rarely splits them, so if google sentence is longer, it is probably wrong
                const extraChars = Math.max(0, googleSentence.length - gareBlock.text.length);
                return {
                    score: Math.max(0, score - score * progressDistance * 2) * (1 - extraChars / gareBlock.text.length),
                    sentence: googleSentence,
                    prefixes: prefixes,
                    progress: googleProgress,
                    googleIndex: googleIndex,
                };
            });
        const alikes = googleScored.sort((a,b) => b.score - a.score);
        for (const {sentence, score, prefixes, progress} of alikes.slice(0, 10)) {
            console.log('  ' + score.toFixed(2).padStart(6) + ' - ' + String(Math.round(100 * progress)).padStart(3) + '% - ' + sentence + ' --> ' + prefixes.map(prefix => prefix + ' ' + getPrefixUniquenessScore(prefix).toFixed(3)).join(', '));
        }
        console.log('___________________');
        rawResults.push({
            garejeiIndex: i + 1,
            garejei: gareBlock.text,
            garejeiProgress: gareProgress,
            googleScored: alikes.slice(0, 40),
        });
    }

    await fs.writeFile(recordingDir + '/rawKeyframes.json', JSON.stringify(rawResults, null, 4));

    // const score = (prefix) => {
    //     return Math.max(
    //         garePrefixCounts.get(prefix),
    //         googlePrefixCounts.get(prefix)
    //     );
    // };
    //
    // const intersection = [...garePrefixCounts.keys()]
    //     .filter(k => googlePrefixCounts.has(k));
    //
    // const noSubs = removeSubs(intersection)
    //     .sort((a,b) => score(a) - score(b));
    //
    // for (const prefix of noSubs.reverse()) {
    //     console.log(
    //         prefix,
    //         garePrefixCounts.get(prefix),
    //         googlePrefixCounts.get(prefix)
    //     );
    //     for (const sentences of [googleSentences, gareSentences]) {
    //         const index = sentences.findIndex(s => s.includes(prefix));
    //         console.log(String(index).padStart(5) + ' - ' + (index / sentences.length).toFixed(2) + ' - ' + sentences[index]);
    //     }
    // }
};

main().catch(exc => {
    console.error(exc);
    process.exit(1);
});
