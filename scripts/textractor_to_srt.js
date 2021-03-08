
import { promises as fs } from 'fs';
import { dirname } from 'path';
import { fileURLToPath } from 'url';
import {buildSrtBlock} from "../public/modules/SrtUtils.js";

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
const videoBirthMs = new Date('2021-03-06 19:42:19.2889619 +0200').getTime();
const chapterDir = __dirname + '/../assets/recordings/ootori_route/rec4';
const textractorSentencesPath = chapterDir + '/textractor_sentences.txt';

const parseTranslatorBlock = (lineTimingText) => {
    const lines = lineTimingText.split(/(?:\r\n|\n)/);
    const [seconds, csTimestamp, sentence] = lines;
    const msPart = csTimestamp.split('.')[1]
        .padEnd(3, '0');
    const startAbsMs = seconds * 1000 + +msPart;

    return {startAbsMs, sentence};
};

const main = async () => {
    const textractorSentencesText = await fs.readFile(textractorSentencesPath, 'utf8');

    const srtRecords = textractorSentencesText
        .trim().split(/(?:\r\n|\n){2}/)
        .map(parseTranslatorBlock);

    const srtOutput = srtRecords.map((srtRecord, i) => {
        const {startAbsMs, sentence} = srtRecord;
        const startRelMs = startAbsMs - videoBirthMs;
        const endRelMs = i + 1 < srtRecords.length
            ? srtRecords[i + 1].startAbsMs - videoBirthMs
            : startRelMs + 5 * 1000;

        return buildSrtBlock({
            index: i + 1, startRelMs, endRelMs, sentence,
        });
    }).join('\n\n');

    await fs.writeFile(chapterDir + `/game_recording.jpn.srt`, srtOutput);
    const jpnLines = srtRecords.map(r => r.sentence);
    const jpnLinesHtml = `
        <head>
            <meta charset="utf8"/>
        </head>
        <body>
            <pre>
${jpnLines.join('\\n')}
            </pre>
        </body>
    `;
    await fs.writeFile(chapterDir + `/jpnLines.html`, jpnLinesHtml);
};

main().catch(exc => {
    console.error(exc);
    process.exit(1);
});
