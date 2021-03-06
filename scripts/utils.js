

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

    return buildSrtBlock({index, startRelTs, endRelTs, sentence});
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
