
import { promises as fs } from 'fs';
import { dirname } from 'path';
import { fileURLToPath } from 'url';

/**
 * @module - this script transforms the output of textractor_capture.lua and a file
 * with each line translated to english into two srt files: for eng and for jap track
 */

const __dirname = dirname(fileURLToPath(import.meta.url));

/**
 * this metadata value is very fragile, it disappears when you
 * move file to different folder, so it can only be hardcoded
 * you can can it in the original output folder with:
 * $ stat NameOfYourRecording.mp4
 */
const videoBirthMs = new Date('2021-02-27T17:56:35.272Z').getTime();
/**
 * video is teensy little bit slower than subs, and that's annoying
 * when subs appear a moment before, so fixing it with an artificial delay
 */
const SUBS_EXTRA_DELAY_MS = 35;
const chapterDir = __dirname + '/../assets/cut_hentai_scenes/chapter1';
const textractorSentencesPath = chapterDir + '/textractor_sentences.txt';
const translatedSentencesPath = chapterDir + '/translated_sentences.txt';

const makeSrtTimestamp = (relMs) => {
    const relCs = Math.floor(relMs / 10);
    const relSeconds = Math.floor(relMs / 1000);
    const relMinutes = Math.floor(relSeconds / 60);
    const relHours = Math.floor(relMinutes / 60);
    return String(relHours).padStart(2, '0') + ':'
        + String(relMinutes % 60).padStart(2, '0') + ':'
        + String(relSeconds % 60).padStart(2, '0') + ','
        + String(relCs % 100).padStart(2, '0');
};

const main = async () => {
    const [
        textractorSentencesText,
        translatedSentencesText,
    ] = await Promise.all([
        fs.readFile(textractorSentencesPath, 'utf8'),
        fs.readFile(translatedSentencesPath, 'utf8'),
    ]);

    const japToEng = new Map(
        translatedSentencesText
            .trim().split(/(?:\r\n|\n){2}/)
            .map(lineTranslationText => {
                return lineTranslationText.split(/(?:\r\n|\n)/);
            })
    );
    const srtRecords = textractorSentencesText
        .trim().split(/(?:\r\n|\n){2}/)
        .map(lineTimingText => {
            const lines = lineTimingText.split(/(?:\r\n|\n)/);
            const [seconds, csTimestamp, japLine] = lines;
            const msPart = csTimestamp.split('.')[1]
                .padEnd(3, '0');
            return {
                startAbsMs: seconds * 1000 + +msPart + SUBS_EXTRA_DELAY_MS,
                translatedLines: {
                    'eng': japToEng.get(japLine),
                    'jpn': japLine,
                },
            };
        });

    const langToSrtOutput = {'eng': '', 'jpn': ''};
    for (let i = 0; i < srtRecords.length; ++i) {
        const {startAbsMs, translatedLines} = srtRecords[i];
        const endAbsMs = i + 1 < srtRecords.length
            ? srtRecords[i + 1].startAbsMs
            : startAbsMs + 30 * 1000;
        for (const [lang, line] of Object.entries(translatedLines)) {
            const startRelTs = makeSrtTimestamp(startAbsMs - videoBirthMs);
            const endRelTs = makeSrtTimestamp(endAbsMs - videoBirthMs);
            langToSrtOutput[lang] += `${i + 1}\n` +
                `${startRelTs} --> ${endRelTs}\n` +
                `${line}\n\n`;
        }
    }
    for (const [lang, srtOutput] of Object.entries(langToSrtOutput)) {
        await fs.writeFile(chapterDir + `/game_recording.${lang}.srt`, srtOutput);
    }
    // should also include here ffmpeg call to encapsulate subs into the video file
};

main().catch(exc => {
    console.error(exc);
    process.exit(1);
});