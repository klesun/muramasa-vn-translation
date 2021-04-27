
/**
 * @typedef {{
 *     index: number | string,
 *     startRelTs: string,
 *     endRelTs: string,
 *     sentence: string
 * }} SrtBlock
 */

export const makeSrtTimestamp = (relMs) => {
    const relCs = Math.floor(relMs / 10);
    const relSeconds = Math.floor(relMs / 1000);
    const relMinutes = Math.floor(relSeconds / 60);
    const relHours = Math.floor(relMinutes / 60);
    return String(relHours).padStart(2, '0') + ':'
        + String(relMinutes % 60).padStart(2, '0') + ':'
        + String(relSeconds % 60).padStart(2, '0') + ','
        + String(relCs % 100).padStart(2, '0');
};

export const parseSrtTimestamp = (timestampStr) => {
    let [, h, m, s, decimalPart] = timestampStr.match(/^(\d{2}):(\d{2}):(\d{2}),(\d+)$/);
    m = +m + h * 60;
    s = +s + m * 60;
    s += '.' + decimalPart;
    const ms = Math.round(s * 1000);
    return ms;
};

/** @param {SrtBlock} srtBlock */
export const joinSrtBlockParts = (srtBlock) => {
    const {index, startRelTs, endRelTs, sentence} = srtBlock;
    return `${index}\n` +
        `${startRelTs} --> ${endRelTs}\n` +
        `${sentence}`;
};

export const buildSrtBlock = ({index, startRelMs, endRelMs, sentence}) => {
    const startRelTs = makeSrtTimestamp(startRelMs);
    const endRelTs = makeSrtTimestamp(endRelMs);

    return joinSrtBlockParts({index, startRelTs, endRelTs, sentence});
};

/**
 * @param {string} blockStr
 * @return {SrtBlock}
 */
export const parseSrtSentence = (blockStr) => {
    const lines = blockStr.split(/\n/);
    if (lines.length !== 3) {
        throw new Error('Unexpected sentence block format: ' + blockStr);
    }
    const [index, startEndLine, sentence] = lines;
    const [startRelTs, endRelTs] = startEndLine.split(' --> ');

    return {index, startRelTs, endRelTs, sentence};
};

/**
 * @param {string} translatedSentencesStr - contents of translated_sentences.txt
 * @return {[string, string][]} - mapping from japanese sentence to translated english one
 */
export const parseSentenceTranslationsFile = (translatedSentencesStr) => {
    return translatedSentencesStr
        .trim().split(/(?:\r\n|\n){2}/)
        .map((lineTranslationText, i) => {
            let [jpn, eng] = lineTranslationText
                .split(/(?:\r\n|\n)/);
            eng = eng.trim()
                // tags have special meaning in srt apparently
                .replace(/^\s*<</, '《')
                .replace(/>>$/, '》')
                // fixing google translate artifacts on some input
                .replace(/^\s*"(.*)》/, '《$1》')
                .replace(/^\s*《(.*)"/, '《$1》');
            return [jpn.trim(), eng];
        });
};
