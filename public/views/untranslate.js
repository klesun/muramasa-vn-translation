import {parseSrtSentence} from "../modules/SrtUtils.js";
import {Dom} from 'https://klesun-misc.github.io/dev_data/common/js/Dom.js';
import Api from "../modules/Api.js";

const gui = {
    /** @type {HTMLFormElement} */
    untranslate_linking_form: document.getElementById('untranslate_linking_form'),
    /** @type {HTMLTableSectionElement} */
    sentences_list: document.getElementById('sentences_list'),
};

const shiftChunk = (headTr, keyframe) => {
    const targetGoogleIndex = keyframe.googleIndex;
    const rowSpan = Math.max(1, keyframe.rowSpan || 0);
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
        const trIndex = i > 0
            ? targetGoogleIndex - 1 + i  + rowSpan - 1
            : targetGoogleIndex - 1 + i;
        const tr = gui.sentences_list.children[trIndex];
        if (!tr) {
            const msg = `Chunk of ${chunkGarejeiDoms.length} would go outside last ${gui.sentences_list.children.length} if put at ${targetGoogleIndex}`;
            alert(msg);
            return;
        } else if (tr.querySelector('.gareji-holder > *')) {
            const msg = `Row #${targetGoogleIndex + i} has existing garejei sentence, tried to move ${headTr.innerHTML}`;
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
        const garejeiDom = headTr.querySelector('.gareji-holder > *');
        if (keyframe.rowSpan !== undefined) {
            garejeiDom.insertBefore(Dom('span', {}, keyframe.rowSpan), garejeiDom.children[0]);
        }

        const existingGarejei = gui.sentences_list.children[keyframe.googleIndex - 1]
            .querySelector('.gareji-holder > *');
        if (!existingGarejei) {
            // some of generated keyframes cover more than few sentences at once - they
            //have to be corrected to be linked to the first of the matched sentences
            shiftChunk(headTr, keyframe);
        }
    }
};

const main = async () => {
    const [googleSrtText, garejeiData, adminKeyframesText] = await Promise.all([
        fetch('./../assets/chapter5/game_recording.eng.srt').then(rs => rs.text()),
        fetch('./../assets/chapter5/garejeiKeyframes_fixed.json').then(rs => rs.json()),
        fetch('./../assets/chapter5/adminKeyframes.json').then(rs => rs.text()),
    ]);
    const adminKeyframes = JSON.parse(adminKeyframesText + 'null]').slice(0, -1);
    const keyframes = [...garejeiData.keyframes, ...adminKeyframes];
    const googleSrtRecords = googleSrtText
        .trim().split(/\n\n/)
        .map(parseSrtSentence);

    const regenerate = () => {
        gui.sentences_list.innerHTML = '';
        googleSrtRecords.map(makeTr)
            .forEach(tr => gui.sentences_list.appendChild(tr));
        putGarejeiBlocks(garejeiData.garejeiBlocks);
        placeKeyframes(keyframes);
    };
    regenerate();

    gui.untranslate_linking_form.onchange = async () => {
        const googleRadio = gui.untranslate_linking_form.querySelector('[name="linkedGoogleSentence"]:checked');
        const garejeiRadio = gui.untranslate_linking_form.querySelector('[name="linkedGarejeiSentence"]:checked');
        console.log({googleRadio, garejeiRadio});
        if (googleRadio && garejeiRadio) {
            const tr = googleRadio.parentNode.parentNode;
            const garejeiBlock = garejeiRadio.parentNode;
            const rowSpan = prompt('Rows span is...', '') || '1';
            const keyframe = {
                garejeiIndex: +garejeiBlock.getAttribute('data-garejei-index'),
                garejei: garejeiBlock.querySelector('.garejei-sentence-text').textContent,
                googleIndex: +tr.getAttribute('data-google-index'),
                google: tr.querySelector('.google-holder').textContent,
                rowSpan: +rowSpan,
            };
            keyframes.push(keyframe);
            regenerate();
            const whenAdded = Api.addGarejeiKeyframe(keyframe);
            await whenAdded;
            googleRadio.checked = false;
            garejeiRadio.checked = false;
        }
    };
};

main().catch(exc => {
    console.error('Main function failed', exc);
    alert('Main function failed - ' + exc);
});
