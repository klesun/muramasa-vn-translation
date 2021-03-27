import {parseSrtSentence} from "../modules/SrtUtils.js";
import {Dom} from 'https://klesun-misc.github.io/dev_data/common/js/Dom.js';
import Api from "../modules/Api.js";

const gui = {
    /** @type {HTMLFormElement} */
    untranslate_linking_form: document.getElementById('untranslate_linking_form'),
    /** @type {HTMLTableSectionElement} */
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

const makeTr = (googleSrtRecord) => {
    return Dom('tr', {'data-google-index': googleSrtRecord.index}, [
        Dom('td', {}, googleSrtRecord.index),
        Dom('td', {class: 'google-holder'}, googleSrtRecord.sentence),
        Dom('td', {}, [
            Dom('input', {type: 'radio', name: 'linkedGoogleSentence'}),
        ]),
        Dom('td', {class: 'gareji-holder'}),
    ]);
};

const putGarejeiBlocks = (garejeiBlocks) => {
    let commentsBuffer = [];
    let googleIndex = 1;
    for (let i = 0; i < garejeiBlocks.length; ++i) {
        const block = garejeiBlocks[i];
        if (block.type === 'innerThought' || block.type === 'quote') {
            const garejiDom = Dom('div', {
                'data-garejei-index': i + 1,
                ...commentsBuffer.length > 0 ? {
                    title: commentsBuffer.slice(-2).join('\n'),
                    class: 'with-pretext',
                } : {},
            }, [
                Dom('input', {type: 'radio', name: 'linkedGarejeiSentence'}),
                Dom('span', {class: 'garejei-sentence-text'}, block.text)
            ]);
            commentsBuffer = [];
            gui.sentences_list.children[googleIndex++ - 1]
                .querySelector('.gareji-holder')
                .appendChild(garejiDom);
        } else if (block.type === 'comment') {
            commentsBuffer.push(block.text);
        }
    }
};

const placeKeyframes = (keyframes) => {
    keyframes.sort((a,b) => b.garejeiIndex - a.garejeiIndex);
    for (const keyframe of keyframes) {
        const selector = `[data-garejei-index="${keyframe.garejeiIndex}"]`;
        const headTr = gui.sentences_list.querySelector(selector).parentNode.parentNode;
        shiftChunk(headTr, keyframe.googleIndex);
    }
};

const main = async () => {
    const [googleSrtText, garejeiData, adminKeyframesText] = await Promise.all([
        fetch('./../assets/chapter5/game_recording.eng.srt').then(rs => rs.text()),
        fetch('./../assets/chapter5/garejeiKeyframes_fixed.json').then(rs => rs.json()),
        fetch('./../assets/chapter5/adminKeyframes.json').then(rs => rs.text()),
    ]);
    const adminKeyframes = JSON.parse(adminKeyframesText + 'null]').slice(0, -1);

    const googleSrtRecords = googleSrtText
        .trim().split(/\n\n/)
        .map(parseSrtSentence);

    googleSrtRecords.map(makeTr)
        .forEach(tr => gui.sentences_list.appendChild(tr));

    putGarejeiBlocks(garejeiData.garejeiBlocks);
    placeKeyframes([...garejeiData.keyframes, ...adminKeyframes]);

    gui.untranslate_linking_form.onchange = async () => {
        const googleRadio = gui.untranslate_linking_form.querySelector('[name="linkedGoogleSentence"]:checked');
        const garejeiRadio = gui.untranslate_linking_form.querySelector('[name="linkedGarejeiSentence"]:checked');
        console.log({googleRadio, garejeiRadio});
        if (googleRadio && garejeiRadio) {
            const tr = googleRadio.parentNode.parentNode;
            const garejeiBlock = garejeiRadio.parentNode;
            const rowSpan = prompt('Rows span is...', '') || '1';
            await Api.addGarejeiKeyframe({
                garejeiIndex: garejeiBlock.getAttribute('data-garejei-index'),
                garejei: garejeiBlock.querySelector('.garejei-sentence-text').textContent,
                googleIndex: tr.getAttribute('data-google-index'),
                google: tr.querySelector('.google-holder').textContent,
                rowSpan: +rowSpan,
            });
            googleRadio.checked = false;
            garejeiRadio.checked = false;
        }
    };
};

main().catch(exc => {
    console.error('Main function failed', exc);
    alert('Main function failed - ' + exc);
});
