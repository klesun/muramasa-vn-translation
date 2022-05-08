
import { promises as fs } from 'fs';
import { dirname } from 'path';
import { fileURLToPath } from 'url';
import {buildSrtBlock} from "../public/node_modules/vn-translation-tools/src/SrtUtils.js";

/**
 * @module - this script transforms the output of textractor_capture.lua and a file
 * with each line translated to english into two srt files: for eng and for jap track
 */

const __dirname = dirname(fileURLToPath(import.meta.url));

const parseObsTimestamp = (fileName) => {
    // const videoBirthMs = new Date('2021-03-06 23:28:01.0526299 +0200').getTime();
    const match = fileName.match(/^(\d{4}-\d{2}-\d{2}) (\d{2}-\d{2}-\d{2}\.\d{7})\.txt$/);
    if (!match) {
        return null;
    }
    const [, datePart, timePart] = match;
    const normalized = datePart + ' ' + timePart.replace(/-/g, ':') + ' +0300';

    return new Date(normalized).getTime();
};

const chapterDir = __dirname + '/../public/assets/mc_revenge_route/rec2';

const parseTranslatorBlock = (lineTimingText) => {
    const lines = lineTimingText.split(/(?:\r\n|\n)/);
    const [seconds, csTimestamp, sentence] = lines;
    const msPart = csTimestamp.split('.')[1]
        .padEnd(3, '0');
    const startAbsMs = seconds * 1000 + +msPart;

    return {startAbsMs, sentence};
};

const main = async () => {
    const existingFiles = await fs.readdir(chapterDir);
    const textractorSentencesFileName = existingFiles.find(parseObsTimestamp);
    if (!textractorSentencesFileName) {
        throw new Error('No files matching textractor pattern in ' + chapterDir + ' - none of:\n' + existingFiles.join('\n'));
    }
    const videoBirthMs = parseObsTimestamp(textractorSentencesFileName);
    const textractorSentencesText = await fs.readFile(chapterDir + '/' + textractorSentencesFileName, 'utf8');

    const srtRecords = textractorSentencesText
        .trim().split(/(?:\r\n|\n){2}/)
        .map(parseTranslatorBlock);

    const srtOutput = srtRecords.flatMap((srtRecord, i) => {
        const {startAbsMs, sentence} = srtRecord;
        const startRelMs = Math.max(startAbsMs - videoBirthMs, 0);
        const endRelMs = i + 1 < srtRecords.length
            ? srtRecords[i + 1].startAbsMs - videoBirthMs
            : startRelMs + 5 * 1000;
        if (endRelMs < 0) {
            // on some recordings there were subs before video start in the buffer
            return [];
        }

        return [buildSrtBlock({
            index: i + 1, startRelMs, endRelMs, sentence,
        })];
    }).join('\n\n');

    await fs.writeFile(chapterDir + `/game_recording.jpn.srt`, srtOutput);
    const jpnLines = srtRecords.map(r => r.sentence);
    const jpnLinesHtml = `
        <head>
            <meta charset="utf8"/>
        </head>
        <body>
            <pre>
${jpnLines.join('\n')}
            </pre>
        </body>
    `;
    await fs.writeFile(chapterDir + `/jpnLines.html`, jpnLinesHtml);
    await fs.writeFile(chapterDir + `/translated_sentences.txt`, '');
};

main().catch(exc => {
    console.error(exc);
    process.exit(1);
});
