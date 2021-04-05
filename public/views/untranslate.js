import {parseSrtSentence} from "../modules/SrtUtils.js";
import {Dom} from 'https://klesun-misc.github.io/dev_data/common/js/Dom.js';
import Api from "../modules/Api.js";
import {allocateBetweenKeyframes} from "../modules/GareLinker.js";

const gui = {
    /** @type {HTMLFormElement} */
    untranslate_linking_form: document.getElementById('untranslate_linking_form'),
    /** @type {HTMLTableSectionElement} */
    sentences_list: document.getElementById('sentences_list'),
    /** @type {HTMLParagraphElement} */
    status_panel: document.getElementById('status_panel'),
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

const makeGarejeiDom = (linkedBlock) => {
    return Dom('div', {
        'data-garejei-index': linkedBlock.garejeiIndex,
    }, [
        Dom('input', {type: 'radio', name: 'linkedGarejeiSentence'}),
        Dom('span', {class: 'garejei-sentence-text'}, linkedBlock.sentence.replace(/\n🤖 \S.*/, '')),
    ]);
};

const putGarejeiBlocks = (allocated) => {
    for (const linkedBlock of allocated) {
        if (linkedBlock.garejeiIndex) {
            const garejiDom = makeGarejeiDom(linkedBlock);
            gui.sentences_list
                .children[linkedBlock.googleIndex - 1]
                .querySelector('.gareji-holder')
                .appendChild(garejiDom);
        }
    }
};

const main = async () => {
    const recordingDir = 'mb_hero_route/rec1';
    const [googleSrtText, autoKeyframes, garejeiBlocks, adminKeyframesText] = await Promise.all([
        fetch('./../assets/' + recordingDir + '/game_recording.eng.srt').then(rs => rs.text()),
        fetch('./../assets/' + recordingDir + '/autoKeyframes.json').then(rs => rs.json()),
        fetch('./../assets/mb_hero_route/garejeiBlocks.json').then(rs => rs.json()),
        fetch('./../assets/' + recordingDir + '/adminKeyframes.json').then(rs => rs.status === 404 ? '[' : rs.text()),
    ]);
    const adminKeyframes = JSON.parse(adminKeyframesText + 'null]').slice(0, -1);
    const keyframes = [...autoKeyframes, ...adminKeyframes];
    const googleSrtRecords = googleSrtText
        .trim().split(/\n\n/)
        .map(parseSrtSentence);

    gui.sentences_list.innerHTML = '';
    const trs = googleSrtRecords.map(makeTr);
    let startMs = Date.now();
    let lastMs = Date.now();
    for (let i = 0; i < trs.length; ++i) {
        gui.sentences_list.appendChild(trs[i]);
        if (i === 600) {
            lastMs = Date.now();
            await new Promise(_ => setTimeout(_, 1));
        }
    }

    const regenerate = async () => {
        trs.forEach(tr => tr.querySelector('.gareji-holder').innerHTML = '');
        const allocated = allocateBetweenKeyframes({
            garejeiBlocks, keyframes, srcSrtBlocks: googleSrtRecords,
        });
        putGarejeiBlocks(allocated);
    };
    await regenerate();

    gui.status_panel.setAttribute('data-status', 'loaded');
    gui.status_panel.textContent = 'Loaded in ' + (Date.now() - startMs + ' ms');

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
            await regenerate();
            const whenAdded = Api.addGarejeiKeyframe({...keyframe, recordingDir});
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
