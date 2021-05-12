import {promises as fs} from "fs";
import {parseSentenceTranslationsFile} from "../public/modules/SrtUtils.js";
import FastestLevenshtein from 'fastest-levenshtein';

const cutters = [
    (sentence, minLength) => sentence,
    (sentence, minLength) => sentence.slice(0, minLength),
    (sentence, minLength) => sentence.slice(0, minLength + 4),
    (sentence, minLength) => sentence.slice(0, minLength + 8),
    (sentence, minLength) => sentence.slice(-minLength),
    (sentence, minLength) => sentence.slice(-minLength - 4),
    (sentence, minLength) => sentence.slice(-minLength - 8),
];

export const hasRepeatingSentences = (eng) => {
    const sentences = eng.split(/[.!?:]+/).filter(s => s.trim());
    for (let i = 1; i < sentences.length; ++i) {
        for (let j = Math.max(i - 2, 0); j < i; ++j) {
            const prev = sentences[j].trim();
            const curr = sentences[i].trim();
            const minLength = Math.min(prev.length, curr.length);
            if (minLength < 10) {
                continue;
            }
            for (const cutter of cutters) {
                const minPrev = cutter(prev, minLength);
                const minCurr = cutter(curr, minLength);
                const distance = FastestLevenshtein.distance(minPrev, minCurr);
                // const distance = ed.levenshtein(minPrev, minCurr, insert, remove, update).distance;


                if (distance / minLength <= 0.45) {
                    // console.log('prev: ' + minPrev);
                    // console.log('curr: ' + minCurr);
                    // console.log('min: ' + minLength);
                    // console.log('Distance: ' + distance);
                    // console.log();

                    return true;
                }
            }
        }
    }
    return false;
};

const hasJapaneseCharacters = (eng) => {
    return eng.match(/[ぁ-ゖ]/) // hiragana
        || eng.match(/[ァ-ヺ]/) // katakana
        || eng.match(/[㐀-龯]/); // kanji
};

export const hasUncertaintyArtifacts = (eng, jpn = undefined) => {
    if (jpn && eng.length < jpn.length * 1.75) {
        // normally english translation consists of 2-3 more characters than original japanese
        // text, but sometimes DeepL does not translate some sentences - detecting such cases
        return true;
    }
    if (hasJapaneseCharacters(eng)) {
        return true;
    }
    return eng.toLowerCase().includes("not sure what")
        || eng.toLowerCase().includes("not sure if")
        || eng.toLowerCase().includes("no, no, no")
        || eng.toLowerCase().includes("great way to make sure")
        || eng.toLowerCase().includes("get the most out")
        || eng.toLowerCase().includes("i'm sure you'll")
        || eng.toLowerCase().includes("you can find")
        || eng.toLowerCase().includes("in the event that you")
        || eng.toLowerCase().includes("heard of it")
        || eng.toLowerCase().includes("in the event you")
        || eng.toLowerCase().includes("it's a good idea")
        || eng.toLowerCase().includes("it's a very good idea")
        || eng.toLowerCase().includes("to have a good idea")
        || eng.toLowerCase().includes("hesitate to contact")
        || eng.toLowerCase().includes("you can contact us")
        || eng.toLowerCase().includes("web site")
        || eng.toLowerCase().includes("on the web")
        || eng.toLowerCase().includes("you can find it at");
};

export const hasDeeplArtifacts = (eng, jpn = undefined) => {
    return hasUncertaintyArtifacts(eng, jpn)
        || hasRepeatingSentences(eng);
};

const parseTabCsv = (csvText) => {
    return csvText.split('\n').map(line => {
        return line.split('\t');
    });
};

export const tryGetDeeplTranslations = async (recordingDir) => {
    const csvPath = recordingDir + '/translated_sentences.csv';
    const deeplWebPath = recordingDir + '/translated_sentences_deepl_web.txt';
    const csvExists = await fs.access(csvPath)
        .then(() => true).catch(() => false);
    const deeplWebExists = await fs.access(deeplWebPath)
        .then(() => true).catch(() => false);
    let deeplDocJpnToEng = new Map();
    let deeplWebJpnToEng = new Map();
    if (csvExists) {
        const csvStr = await fs.readFile(csvPath, 'utf8');
        const rows = parseTabCsv(csvStr.trim());
        const cols = rows.shift();
        for (const row of rows) {
            const [jpn, eng_google, eng_deepl_document, eng_deepl_web] = row;
            deeplDocJpnToEng.set(jpn.trim(), eng_deepl_document);
            deeplWebJpnToEng.set(jpn.trim(), eng_deepl_web);
        }
    } else if (deeplWebExists) {
        const translatedSentencesStr = await fs.readFile(deeplWebPath, 'utf8');
        deeplWebJpnToEng = new Map(
            parseSentenceTranslationsFile(translatedSentencesStr)
        );
    }
    const resultJpnToEng = new Map();
    for (const [jpn, webEng] of deeplWebJpnToEng) {
        const bestEng = [
            webEng,
            ...deeplDocJpnToEng.has(jpn) ? [deeplDocJpnToEng.get(jpn)] : [],
        ].find(eng => {
            const isGood = !hasDeeplArtifacts(eng, jpn);
            // if (!isGood && hasRepeatingSentences(eng)) {
            //     console.log(JSON.stringify(eng) + ',');
            // }
            return isGood;
        });

        if (bestEng) {
            resultJpnToEng.set(jpn, bestEng);
        }
    }
    return resultJpnToEng;
};
