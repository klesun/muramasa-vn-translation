
export const allocateBetweenKeyframes = ({garejeiBlocks, keyframes, srcSrtBlocks}) => {
    const gareToKeyframe = new Map(
        keyframes.map(kf => [
            kf.garejeiIndex, kf,
        ])
    );
    const outSrtBlocks = [];
    let lastEndGoogleIndex = 1;
    let commentsBuffer = [];
    for (let i = 0; i < garejeiBlocks.length; ++i) {
        if (i < 533 || i >= 1110) {
            continue; // TODO: move each recording bounds to a reusable mapping file
        }
        const garejeiBlock = garejeiBlocks[i];
        const garejeiIndex = i + 1;
        if ('text' in garejeiBlock && garejeiBlock.text.match(/^[\s….]*$/)) {
            continue; // useless, as Gare naturally does not add consistent "..." matching those in the game, as
                      // that would be meaningless, considering he does not translate every sentence anyway
        }
        let displayText = null;
        if ((garejeiBlock.type === 'comment' || garejeiBlock.type === 'unknown') && garejeiBlock.text.trimEnd()) {
            commentsBuffer.push(garejeiBlock.text.trimEnd());
        } else if (garejeiBlock.type === 'innerThought') {
            displayText = garejeiBlock.text;
        } else if (garejeiBlock.type === 'quote') {
            displayText = '"' + garejeiBlock.text + '"' + (garejeiBlock.speaker ? ' - ' + garejeiBlock.speaker : '');
        }
        // TODO: support when multiple garejei blocks match single google block
        if (displayText) {
            displayText = '🕸 ' + displayText;
            const keyframe = gareToKeyframe.get(garejeiIndex);
            const googleIndex = keyframe ? keyframe.googleIndex : lastEndGoogleIndex;
            outSrtBlocks.push(...srcSrtBlocks.slice(lastEndGoogleIndex -1, googleIndex - 1));
            const rowSpan = keyframe ? keyframe.rowSpan ?? 0 : 0;
            if (googleIndex === outSrtBlocks.slice(-1)[0]?.googleIndex) {
                // more than one Gare block matched same game block
                outSrtBlocks.slice(-1)[0].sentence += '\n' + displayText;
                continue;
            }
            const googleSrt = srcSrtBlocks[googleIndex - 1];
            if (commentsBuffer.length > 0 && googleIndex > 1) {
                srcSrtBlocks[googleIndex - 2].sentence =
                    commentsBuffer.map(s => '🕸 ' + s).join('\n').trimEnd() + '\n🤖 ' +
                    srcSrtBlocks[googleIndex - 2].sentence;
                commentsBuffer = [];
            }
            let outSrtBlock = {...googleSrt};
            if (rowSpan === 0) {
                outSrtBlock.sentence = displayText + '\n🤖 ' + googleSrt.sentence;
            } else if (rowSpan === 1) {
                outSrtBlock.sentence = displayText;
            } else {
                outSrtBlock = {
                    index: null,
                    startRelTs: googleSrt.startRelTs,
                    endRelTs: srcSrtBlocks[googleIndex - 1 + rowSpan - 1].endRelTs,
                    sentence: displayText,
                };
            }
            /** following not part of srt, just some metadata */
            outSrtBlock.garejeiIndex = garejeiIndex;
            outSrtBlock.googleIndex = googleIndex;
            outSrtBlock.rowSpan = rowSpan;
            outSrtBlock.score = keyframe?.score ?? undefined;
            outSrtBlock.nextScore = keyframe?.nextScore ?? undefined;
            outSrtBlock.prefixes = keyframe?.prefixes ?? undefined;

            outSrtBlocks.push(outSrtBlock);
            lastEndGoogleIndex = googleIndex + Math.max(rowSpan, 1);
            if (lastEndGoogleIndex >= srcSrtBlocks.length) {
                break; // ignore Gare blocks that are beyond the SRT file (Gare covers whole chapter,
                       // while SRT is for single recording, which is just a part of this chapter)
            }
        }
    }
    outSrtBlocks.push(...srcSrtBlocks.slice(lastEndGoogleIndex -1));
    outSrtBlocks.forEach((srtBlock, i) => srtBlock.index = i + 1);

    return outSrtBlocks;
};
