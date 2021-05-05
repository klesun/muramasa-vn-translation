
import {promises as fs} from "fs";
import {parseSrtSentence} from "../public/modules/SrtUtils.js";
import {dirname} from "path";
import {fileURLToPath} from "url";
import {ParseNwscript} from "../public/modules/ParseNwscript.js";

const __dirname = dirname(fileURLToPath(import.meta.url));

const AIRSHIP_FUNCTION_TEXTS = [
    "午前七時五二分",
    "午前七時五二分一〇秒",
    "午前七時五二分二〇秒",
    "午前七時五二分三〇秒",
    "午前七時五二分四〇秒",
    "午前七時五二分五〇秒",
    "午前七時五三分",
    "午前七時五三分一〇秒",
    "午前七時五三分二〇秒",
    "午前七時五三分三〇秒",
    "午前七時五三分四〇秒",
    "午前七時五三分五〇秒",
    "午前七時五四分",
    "午前七時五四分一〇秒",
    "午前七時五四分二〇秒",
    "午前七時五四分三〇秒",
    "午前七時五四分四〇秒",
    "午前七時五四分五〇秒",
    "午前七時五五分",
    "午前七時五五分一〇秒",
    "午前七時五五分二〇秒",
    "午前七時五五分三〇秒",
    "午前七時五五分四〇秒",
    "午前七時五五分五〇秒",
    "午前七時五六分",
    "午前七時五六分一〇秒",
    "午前七時五六分二〇秒",
    "午前七時五六分三〇秒",
    "午前七時五六分四〇秒",
    "午前七時五六分五〇秒",
    "午前七時五七分",
    "午前七時五七分一〇秒",
    "午前七時五七分二〇秒",
    "午前七時五七分三〇秒",
    "午前七時五七分四〇秒",
    "午前七時五七分五〇秒",
    "午前七時五八分",
    "午前七時五八分一〇秒",
    "午前七時五八分二〇秒",
    "午前七時五八分三〇秒",
    "午前七時五八分四〇秒",
    "午前七時五八分五〇秒",
    "午前七時五九分",
    "午前七時五九分一〇秒",
    "午前七時五九分二〇秒",
    "午前七時五九分三〇秒",
    "午前七時五九分四〇秒",
    "午前七時五九分五〇秒",
    "午前八時〇分",
    "午前八時〇分一〇秒",
    "午前八時〇分二〇秒",
    "午前八時〇分三〇秒",
    "午前八時〇分四〇秒",
    "午前八時〇分五〇秒",
    "午前八時一分",
    "午前八時一分一〇秒",
    "午前八時一分二〇秒",
    "午前八時一分三〇秒",
    "午前八時一分四〇秒",
    "午前八時一分五〇秒",
    "午前八時二分",
    "午前八時二分一〇秒",
    "午前八時二分二〇秒",
    "午前八時二分三〇秒",
    "午前八時二分四〇秒",
    "午前八時二分五〇秒",
    "午前八時三分",
    "午前八時三分一〇秒",
    "午前八時三分二〇秒",
    "午前八時三分三〇秒",
    "午前八時三分四〇秒",
    "午前八時三分五〇秒",
    "午前八時四分",
    "午前八時四分一〇秒",
    "午前八時四分二〇秒",
    "午前八時四分三〇秒",
    "午前八時四分四〇秒",
    "午前八時四分五〇秒",
    "午前八時五分",
    "午前八時五分一〇秒",
    "午前八時五分二〇秒",
    "午前八時五分三〇秒",
    "午前八時五分四〇秒",
    "午前八時五分五〇秒",
    "午前八時六分",
    "午前八時六分一〇秒",
    "午前八時六分二〇秒",
    "午前八時六分三〇秒",
    "午前八時六分四〇秒",
    "午前八時六分五〇秒",
    "午前八時七分",
    "午前八時七分一〇秒",
    "午前八時七分二〇秒",
    "午前八時七分三〇秒",
    "午前八時七分四〇秒",
    "午前八時七分五〇秒",
    "午前八時八分",
];

const SKIPPED_TEXTS = new Set(
    AIRSHIP_FUNCTION_TEXTS
);

const TextBlock = (props = {}) => ({
    voice: null,
    inlinedStatements: [],
    textParts: [],
    skippedElements: [],
    ...props,
});

const elementsToTextBlocks = (elements) => {
    const result = {
        textId: '',
        textBlocks: [TextBlock()],
    };
    const last = () => result.textBlocks.slice(-1)[0];
    for (const element of elements) {
        if (element.kind === 'TEXT_ID') {
            result.textId = element.id;
        } else if (element.kind === 'LINE_COMMENT') {
            last().skippedElements.push(element);
        } else if (element.kind === 'INLINED_STATEMENTS') {
            if (last().inlinedStatements.length > 0) {
                throw new Error('Unexpected multiple code injections in same text block');
            }
            last().inlinedStatements = element.statements;
        } else if (element.kind === 'XML_DOT') {
            if (element.tagName === 'voice') {
                last().voice = element.attributes;
            } else {
                last().textParts.push(element);
            }
        } else if (element.kind === 'XML_WRAP') {
            last().textParts.push(element);
        } else if (element.kind === 'PLAIN_TEXT') {
            const split = element.text.split(/\n{2,}/);
            last().textParts.push({
                kind: 'PLAIN_TEXT',
                text: split.shift(),
            });
            for (const text of split) {
                result.textBlocks.push(TextBlock({
                    textParts: [{
                        kind: 'PLAIN_TEXT',
                        text: text,
                    }],
                }));
            }
        } else {
            throw new Error('Unexpected element kind: ' + element.kind);
        }
    }
    return result;
};

const collectNssScenes = async () => {
    const dirPaths = [
        __dirname + '/../public/assets/ma_common_route/ma01_crimson_craft/nss_game_scripts',
        __dirname + '/../public/assets/ma_common_route/ma02_two_old_crafts/nss_game_scripts',
        __dirname + '/../public/assets/ma_common_route/ma03_counterattack_craft/nss_game_scripts',
        __dirname + '/../public/assets/ma_common_route/ma04_sky_shaking_craft/nss_game_scripts',
        __dirname + '/../public/assets/ma_common_route/ma05_star_craft/nss_game_scripts',
        __dirname + '/../public/assets/mb_hero_route/nss_game_scripts/mb01',
        __dirname + '/../public/assets/mb_hero_route/nss_game_scripts/mb02',
        __dirname + '/../public/assets/mb_hero_route/nss_game_scripts/mb03',
        __dirname + '/../public/assets/mb_hero_route/nss_game_scripts/mb04',
        __dirname + '/../public/assets/mc_revenge_route/nss_game_scripts/mc01',
        __dirname + '/../public/assets/mc_revenge_route/nss_game_scripts/mc02',
        __dirname + '/../public/assets/mc_revenge_route/nss_game_scripts/mc03',
        __dirname + '/../public/assets/mc_revenge_route/nss_game_scripts/mc04',
        __dirname + '/../public/assets/md_devil_route/nss_game_scripts/md01',
        __dirname + '/../public/assets/md_devil_route/nss_game_scripts/md02',
        __dirname + '/../public/assets/md_devil_route/nss_game_scripts/md03',
        __dirname + '/../public/assets/md_devil_route/nss_game_scripts/md04',
        __dirname + '/../public/assets/md_devil_route/nss_game_scripts/md05',
        __dirname + '/../public/assets/md_devil_route/nss_game_scripts/md06',
        __dirname + '/../public/assets/mz_hm_secret_maybe/nss_game_scripts',
    ];
    const dirPromises = dirPaths.map(dirPath => {
        return fs.readdir(dirPath).then(names => {
            return names.map(name => {
                return {
                    name: name,
                    whenContent: fs.readFile(dirPath + '/' + name, 'utf8'),
                };
            });
        });
    });
    const nssScenes = new Map();
    for (const dirPromise of dirPromises) {
        const files = await dirPromise;
        for (const {name, whenContent} of files) {
            const fileContent = await whenContent;
            console.log('Ololo parsing: ' + name);
            const [error, definitions] = ParseNwscript(fileContent);
            if (error && !definitions.slice(-1).some(d => d.name === 'BoyaboyaSet')) {
                // BoyaboyaSet looks like a typo in code
                console.log(JSON.stringify(definitions.slice(-1)[0]));
                throw new Error('Zhopa error at ' + name +' - ' + error);
            }
            for (const definition of definitions) {
                if (definition.kind === 'SCENE') {
                    if (nssScenes.has(definition.name) && !['md05_004saidenn01d.nss_SELECT03'].includes(definition.name)) {
                        throw new Error('Duplicate scene name - ' + definition.name);
                    }
                    nssScenes.set(definition.name, definition);
                }
            }
        }
    }

    console.log('nssScenes', nssScenes);
    return nssScenes;
};

export const MatchSrtToNss = async ({
    dirPath,
}) => {
    const scenes = await collectNssScenes();

    const getTextBlocksIn = async function*(nssRange) {
        if (nssRange.scene) {

        } else {

        }
    };

    const metadataStr = await fs.readFile(dirPath + '/metadata.json', 'utf8');
    const metadata = JSON.parse(metadataStr);
    for (const {fileNameRoot, nssRanges} of metadata.splitParts) {
        const srtStr = await fs.readFile(dirPath + '/' + fileNameRoot + '.jpn.srt', 'utf8');
        const srtBlocks = srtStr
            .trim().split(/\n\n/)
            .map(parseSrtSentence);
        for (const nssRange of nssRanges) {
            let srtStart = nssRange.srtStart;
            for await (const textBlock of getTextBlocksIn(nssRange)) {

            }
        }
    }
};
