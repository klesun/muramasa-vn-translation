import {dirname} from 'path';
import {fileURLToPath} from 'url';
import {promises as fs} from "fs";
import {parseSentenceTranslationsFile, parseSrtSentence} from "../public/modules/SrtUtils.js";

const __dirname = dirname(fileURLToPath(import.meta.url));

export const CHAPTER5_REC1_DIR = __dirname + '/../public/assets/ma_common_route/ma05_star_craft';

export const RECORDING_LOCATIONS = [
    [__dirname + '/../public/assets/ma_common_route/ma01_crimson_craft'],
    [__dirname + '/../public/assets/ma_common_route/ma03_counterattack_craft', 'game_recording_during_h'],
    [__dirname + '/../public/assets/ma_common_route/ma04_sky_shaking_craft'],
    [CHAPTER5_REC1_DIR],
    [CHAPTER5_REC1_DIR, 'game_recording_during_h'],
    [CHAPTER5_REC1_DIR, 'game_recording_after_h'],
    [__dirname + '/../public/assets/mb_hero_route/rec1'],
    [__dirname + '/../public/assets/mb_hero_route/rec2', 'game_recording_during_h'],
    [__dirname + '/../public/assets/mb_hero_route/rec2', 'game_recording_before_h2'],
    [__dirname + '/../public/assets/mb_hero_route/rec2', 'game_recording_during_h2'],
    [__dirname + '/../public/assets/mb_hero_route/rec2', 'game_recording_after_h2'],
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

/**
 * @return {Promise<SrtBlock[]>}
 */
export const getTranslatedSrt = async (recordingDir, fileNameRoot = 'game_recording') => {
    const srcSrtStr = await fs.readFile(recordingDir + '/' + fileNameRoot + '.jpn.srt', 'utf8');
    const translatedSentencesStr = await fs.readFile(recordingDir + '/translated_sentences.txt', 'utf8');

    const japToEng = new Map(
        parseSentenceTranslationsFile(translatedSentencesStr)
    );
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