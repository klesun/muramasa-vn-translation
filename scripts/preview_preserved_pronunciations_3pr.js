import {RECORDING_LOCATIONS} from "../assets/assets_index.js";
import {promises as fs} from "fs";
import {parseSentenceTranslationsFile} from "../public/modules/SrtUtils.js";
import {dirname} from 'path';
import {fileURLToPath} from 'url';

const __dirname = dirname(fileURLToPath(import.meta.url));

/**
 * @return {Map<string, string>}
 */
const collectKanjiToRomaji = async () => {
    const characterNamesText = await fs.readFile(__dirname + '/../assets/character_names.json', 'utf8');
    const characterNames = JSON.parse(characterNamesText);
    const kanjiToRomaji = new Map(
        characterNames.flatMap(([kan, rom]) => {
            const kanWords = kan.split(' ');
            const romWords = rom.split(' ');
            const wordPairs = [];
            if (kanWords.length === romWords.length) {
                for (let i = 0; i < kanWords.length; ++i) {
                    if (kanWords[i] === '統') {
                        // "subaru" is very frequently used word in Japanese
                        wordPairs.push(['統様', 'Subaru-sama']);
                    } else {
                        wordPairs.push([kanWords[i], romWords[i]]);
                    }
                }
            } else {
                wordPairs.push([kan, rom]);
            }
            return wordPairs;
        })
    );
    kanjiToRomaji.set('劒冑', 'tsurugi');
    kanjiToRomaji.set('陰義', 'shinogi');
    kanjiToRomaji.set('吉野御流合', 'Yoshino Goryu');
    kanjiToRomaji.set('鉄炮', 'Tetsuhao');
    // TODO: add words like Tsurugi, Musha, etc...
    return kanjiToRomaji;
};

const mistranslations = [
    ['武', 'Takeshi', 'Bushido'],
    ['ない', 'Okay', 'Yes'],
];

const honorifics = new Map([
    ['さん', 'san'],
    ['様', 'sama'],
    ['さま', 'sama'],
    ['君', 'kun'],
    ['くん', 'kun'],
    ['ちゃん', 'chan'],
    ['たん', 'tan'],
    ['坊', 'bo'],
    ['ぼう', 'bo'],
    ['先輩', 'senpai'],
    ['せんぱい', 'senpai'],
    ['先生', 'sensei'],
    ['せんせい', 'sensei'],
    ['氏', 'shi'],
    ['し', 'shi'],
    ['殿', 'dono'],
    ['との', 'dono'],
    ['姉ちゃん', 'nēchan'],
    ['お姉ちゃん', 'onēchan'],
    ['姉さん', 'nēsan'],
    ['お姉さん', 'onēsan'],
    ['兄ちゃん', 'niichan'],
    ['お兄ちゃん', 'oniichan'],
    ['兄さん', 'niisan'],
    ['お兄さん', 'oniisan'],
]);

const main = async () => {
    const kanjiToRomaji = await collectKanjiToRomaji();
    for (const location of RECORDING_LOCATIONS) {
        if (location.length === 1) {
            const dirPath = location[0];
            const transTxt = await fs.readFile(dirPath + '/translated_sentences.txt', 'utf8');
            for (const [jpn, eng] of parseSentenceTranslationsFile(transTxt)) {
                for (const [kan, rom] of kanjiToRomaji) {
                    const index = jpn.indexOf(kan);
                    if (index > -1) {
                        console.log(jpn);
                        const postfix = jpn.slice(index + kan.length, index + kan.length + 5);
                        const honorific = [...honorifics].find(h => postfix.startsWith(h[0]));
                        console.log('  '.repeat(index) + '^^'.repeat(kan.length) + ' - ' + rom + (honorific ? '---' + honorific[1] : ''));
                        console.log(eng + '\n');
                    }
                }
                // manual corrections
                for (const [jpn, wrong, right] of mistranslations) {
                    const bushidoAt = jpn.indexOf(jpn);
                    const takeshiAt = eng.indexOf(wrong);
                    if (bushidoAt > -1 && takeshiAt > -1) {
                        // I think it's some bug in google translate, for some reason
                        // it strongly believes that Bushido reads as Takeshi
                        console.log(jpn);
                        console.log('  '.repeat(bushidoAt) + '^^'.repeat(jpn.length) + ' - ' + right);
                        console.log(eng + '\n');
                    }
                }
            }
        } else {
            // more divisions within same directory
        }
    }
};

main().catch(error => {
    console.error('Main script execution failed', error);
    process.exit(1);
});