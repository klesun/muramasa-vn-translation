import {parseSrtSentence} from "../modules/SrtUtils.js";
import {Dom} from 'https://klesun-misc.github.io/dev_data/common/js/Dom.js';

const gui = {
    sentences_list: document.getElementById('sentences_list'),
};

const shiftChunk = (headTr, targetGoogleIndex) => {
    const headGoogleIndex = +headTr.getAttribute('data-google-index');
    const chunkGarejeiDoms = [];
    for (let i = headGoogleIndex - 1; i < gui.sentences_list.children.length; ++i) {
        const tr = gui.sentences_list.children[i];
        const garejeiDom = tr.querySelector('.gareji-holder > *');
        if (garejeiDom) {
            chunkGarejeiDoms.push(garejeiDom);
        } else {
            break;
        }
    }
    const targetTrs = [];
    for (let i = 0; i < chunkGarejeiDoms.length; ++i) {
        const tr = gui.sentences_list.children[targetGoogleIndex - 1 + i];
        if (!tr) {
            const msg = `Chunk of ${chunkGarejeiDoms.length} would go outside last ${gui.sentences_list.children.length} if put at ${targetGoogleIndex}`;
            alert(msg);
            return;
        } else if (tr.querySelector('.gareji-holder > *')) {
            const msg = `Row #${targetGoogleIndex + i} has existing garejei sentence`;
            alert(msg);
            return;
        } else {
            targetTrs.push(tr);
        }
    }
    chunkGarejeiDoms.forEach(d => d.remove());
    for (let i = 0; i < chunkGarejeiDoms.length; ++i) {
        targetTrs[i].querySelector('.gareji-holder').appendChild(chunkGarejeiDoms[i]);
    }
};

const main = async () => {
    const googleSrtText = await fetch('./../assets/chapter5/game_recording.eng.srt').then(rs => rs.text());
    const keyframesJsonText = await fetch('./../assets/chapter5/garejeiKeyframes_fixed.json').then(rs => rs.text());

    const googleSrtRecords = googleSrtText
        .trim().split(/\n\n/)
        .map(parseSrtSentence);
    const garejeiData = JSON.parse(keyframesJsonText);

    for (const googleSrtRecord of googleSrtRecords) {
        const tr = Dom('tr', {'data-google-index': googleSrtRecord.index}, [
            Dom('td', {}, googleSrtRecord.index),
            Dom('td', {class: 'google-holder'}, googleSrtRecord.sentence),
            Dom('td', {class: 'gareji-holder'}),
            Dom('td', {}, [
                Dom('input', {type: 'radio', name: 'movedChunkStart'}),
            ]),
            Dom('td', {}, [
                Dom('button', {
                    onclick: () => alert('TODO: implement!'),
                }, 'Drop'),
            ]),
        ]);
        gui.sentences_list.appendChild(tr);
    }

    let commentsBuffer = [];
    let googleIndex = 1;
    for (let i = 0; i < garejeiData.garejeiBlocks.length; ++i) {
        const block = garejeiData.garejeiBlocks[i];
        if (block.type === 'innerThought' || block.type === 'quote') {
            const garejiDom = Dom('span', {
                'data-garejei-index': i + 1,
                ...commentsBuffer.length > 0 ? {
                    title: commentsBuffer.slice(-5).join('\n'),
                    class: 'with-pretext',
                } : {},
            }, block.text);
            commentsBuffer = [];
            gui.sentences_list.children[googleIndex++ - 1]
                .querySelector('.gareji-holder')
                .appendChild(garejiDom);
        } else if (block.type === 'comment') {
            commentsBuffer.push(block.text);
        }
    }

    for (const keyframe of [...garejeiData.keyframes].reverse()) {
        const selector = `[data-garejei-index="${keyframe.garejeiIndex}"]`;
        const headTr = gui.sentences_list.querySelector(selector).parentNode.parentNode;
        shiftChunk(headTr, keyframe.googleIndex);
    }
};

main().catch(exc => {
    console.error('Main function failed', exc);
    alert('Main function failed - ' + exc);
});
