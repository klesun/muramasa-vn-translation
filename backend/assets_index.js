import {dirname} from 'path';
import {fileURLToPath} from 'url';
import {promises as fs} from "fs";
import {parseSentenceTranslationsFile, parseSrtSentence} from "../public/modules/SrtUtils.js";
import FastestLevenshtein from 'fastest-levenshtein';

const __dirname = dirname(fileURLToPath(import.meta.url));

export const CHAPTER5_REC1_DIR = __dirname + '/../public/assets/ma_common_route/ma05_star_craft';
export const HERO_ROUTE_REC1_DIR = __dirname + '/../public/assets/mb_hero_route/rec1';
export const HERO_ROUTE_REC2_DIR = __dirname + '/../public/assets/mb_hero_route/rec2';

export const RECORDING_LOCATIONS = [
    [__dirname + '/../public/assets/ma_common_route/ma01_crimson_craft'],
    [__dirname + '/../public/assets/ma_common_route/ma03_counterattack_craft', 'game_recording_during_h'],
    [__dirname + '/../public/assets/ma_common_route/ma04_sky_shaking_craft'],
    [CHAPTER5_REC1_DIR],
    [CHAPTER5_REC1_DIR, 'game_recording_during_h'],
    [CHAPTER5_REC1_DIR, 'game_recording_after_h'],
    [HERO_ROUTE_REC1_DIR],
    [HERO_ROUTE_REC2_DIR, 'game_recording_during_h'],
    [HERO_ROUTE_REC2_DIR, 'game_recording_before_h2'],
    [HERO_ROUTE_REC2_DIR, 'game_recording_during_h2'],
    [HERO_ROUTE_REC2_DIR, 'game_recording_after_h2'],
    [__dirname + '/../public/assets/mb_hero_route/rec3'],
    [__dirname + '/../public/assets/mc_revenge_route/rec1'],
    [__dirname + '/../public/assets/mc_revenge_route/rec2'],
    [__dirname + '/../public/assets/mc_revenge_route/rec3'],
    [__dirname + '/../public/assets/mc_revenge_route/rec4'],
    [__dirname + '/../public/assets/mc_revenge_route/rec4', 'game_recording_during_h'],
    [__dirname + '/../public/assets/mc_revenge_route/rec4', 'game_recording_after_h'],
    [__dirname + '/../public/assets/md_devil_route/rec1'],
    [__dirname + '/../public/assets/md_devil_route/rec2'],
    [__dirname + '/../public/assets/md_devil_route/rec3'],
    [__dirname + '/../public/assets/md_devil_route/rec3', 'game_recording_during_h'],
    [__dirname + '/../public/assets/md_devil_route/rec3', 'game_recording_after_h'],
    [__dirname + '/../public/assets/md_devil_route/rec4'],
    [__dirname + '/../public/assets/md_devil_route/rec5'],
    [__dirname + '/../public/assets/md_devil_route/rec6'],
    [__dirname + '/../public/assets/md_devil_route/rec7'],
    [__dirname + '/../public/assets/md_devil_route/rec8'],
    [__dirname + '/../public/assets/md_devil_route/rec8', 'game_recording_during_h'],
    [__dirname + '/../public/assets/md_devil_route/rec8', 'game_recording_after_h'],
];

const hasRepeatingSentences = (eng) => {
    const sentences = eng.split(/[.!?]/);
    for (let i = 1; i < sentences.length; ++i) {
        const prev = sentences[i - 1].trim();
        const curr = sentences[i].trim();
        const minLength = Math.min(prev.length, curr.length);
        const minPrev = prev.slice(0, minLength)
        const minCurr = curr.slice(0, minLength)
        const distance = Math.min(
            FastestLevenshtein.distance(minPrev, minCurr),
            FastestLevenshtein.distance(prev, curr),
        );
        if (distance < 7 && minLength > 30) {
            return true;
        }
    }
    return false;
};

const hasDeeplArtifacts = (eng) => {
    return eng.toLowerCase().includes("not sure what")
        || eng.toLowerCase().includes("not sure if")
        || eng.toLowerCase().includes("in the event that you")
        || eng.toLowerCase().includes("in the event you")
        || eng.toLowerCase().includes("it's a good idea")
        || eng.toLowerCase().includes("web site")
        || eng.toLowerCase().includes("on the web")
        || hasRepeatingSentences(eng);
};

const parseTabCsv = (csvText) => {
    return csvText.split('\n').map(line => {
        return line.split('\t');
    });
};

/**
 * @return {Promise<SrtBlock[]>}
 */
export const getTranslatedSrt = async (recordingDir, fileNameRoot = 'game_recording') => {
    const srtPath = recordingDir + '/' + fileNameRoot + '.jpn.srt';
    const txtPath = recordingDir + '/translated_sentences.txt';
    const csvPath = recordingDir + '/translated_sentences.csv';

    const srcSrtStr = await fs.readFile(srtPath, 'utf8');
    const translatedSentencesStr = await fs.readFile(txtPath, 'utf8');

    const japToEng = new Map(
        parseSentenceTranslationsFile(translatedSentencesStr)
    );
    const csvExists = await fs.access(csvPath)
        .then(() => true).catch(() => false)
    if (csvExists) {
        const csvStr = await fs.readFile(csvPath, 'utf8');
        const rows = parseTabCsv(csvStr.trim());
        const cols = rows.shift();
        for (const row of rows) {
            const [jpn, eng_google, eng_deepl_document, eng_deepl_web] = row;
            const bestEng = [
                eng_deepl_web,
                eng_deepl_document,
            ].filter(eng => !hasDeeplArtifacts(eng))
                .map(eng => '🔗 ' + eng)
                .concat(['🤖' + eng_google])
                [0];
            japToEng.set(jpn.trim(), bestEng);
        }
    }
    const translateBlock = parsedBlock => {
        const japLine = parsedBlock.sentence;
        if (!japToEng.get(japLine.trim())) {
            throw new Error('Missing translation for: ' + japLine);
        }
        parsedBlock.sentence = japToEng.get(japLine.trim());

        return parsedBlock;
    };
    const srcJpnSrtBlocks = srcSrtStr
        .trim().split(/\n\n/)
        .map(parseSrtSentence);
    const translatedSrtBlocks = srcJpnSrtBlocks
        .map(parsedBlock => translateBlock({...parsedBlock}));

    return translatedSrtBlocks;
};
