

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

export const joinSrtBlockParts = ({index, startRelTs, endRelTs, sentence}) => {
    return `${index}\n` +
        `${startRelTs} --> ${endRelTs}\n` +
        `${sentence}`;
};

export const buildSrtBlock = ({index, startRelMs, endRelMs, sentence}) => {
    const startRelTs = makeSrtTimestamp(startRelMs);
    const endRelTs = makeSrtTimestamp(endRelMs);

    return joinSrtBlockParts({index, startRelTs, endRelTs, sentence});
};

export const parseSrtSentence = (block) => {
    const lines = block.split(/\n/);
    if (lines.length !== 3) {
        throw new Error('Unexpected sentence block format: ' + block);
    }
    const [index, startEndLine, sentence] = lines;
    const [startRelTs, endRelTs] = startEndLine.split(' --> ');

    return {index, startRelTs, endRelTs, sentence};
};

/**
 * @param {string} translatedSentencesText - contents of translated_sentences.txt
 * @return {Map<string, string>} - mapping from japanese sentence to translated english one
 */
export const parseSentenceTranslationsFile = (translatedSentencesText) => {
    return new Map(
      translatedSentencesText
        .trim().split(/(?:\r\n|\n){2}/)
        .map(lineTranslationText => {
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
        })
    );
};