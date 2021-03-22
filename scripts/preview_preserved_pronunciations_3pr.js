import {RECORDING_LOCATIONS} from "../assets/assets_index.js";
import {promises as fs} from "fs";
import {parseSentenceTranslationsFile} from "../public/modules/SrtUtils.js";
import {dirname} from 'path';
import {fileURLToPath} from 'url';

const __dirname = dirname(fileURLToPath(import.meta.url));

/**
 * @return {Map<string, string>}
 */
const collectKanjiToRomaji = async (dirPath) => {
    const characterNamesText = await fs.readFile(__dirname + '/../assets/character_names.json', 'utf8');
    const characterNames = JSON.parse(characterNamesText);
    const kanjiToRomaji = new Map(
        characterNames.flatMap(([kan, rom]) => {
            const kanWords = kan.split(' ');
            const romWords = rom.split(' ');
            const wordPairs = [];
            wordPairs.push([kan, rom]);
            if (kanWords.length === romWords.length) {
                for (let i = 0; i < kanWords.length; ++i) {
                    if (kanWords[i] === '統' && !dirPath.endsWith('/chapter5')) {
                        // "subaru" is very frequently used word in Japanese
                        wordPairs.push(['統様', 'Subaru-sama']);
                    } else if (kanWords[i] === '卓' && !dirPath.endsWith('/chapter3')) {
                        // skip, frequently used word "suguru", something like table
                    } else if (kanWords[i] === '光' && !dirPath.endsWith('/chapter5') && !dirPath.match('/devil_route/rec\d+')) {
                        // skip, frequently used word "hikaru", light
                    } else {
                        wordPairs.push([kanWords[i], romWords[i]]);
                    }
                }
            }
            return wordPairs;
        })
    );
    // they refer bandits boss lady this way. I also
    // think I saw Prince be referred same way
    kanjiToRomaji.set('御館', 'Boss-Lady');
    kanjiToRomaji.set('銀星号', 'Silver Star');
    kanjiToRomaji.set('武者', 'musha');
    kanjiToRomaji.set('劔冑', 'tsurugi*');
    kanjiToRomaji.set('劒冑', 'tsurugi');
    kanjiToRomaji.set('陰義', 'shinogi');
    kanjiToRomaji.set('御堂', 'midou');
    kanjiToRomaji.set('脛巾', 'habaki');
    kanjiToRomaji.set('吉野御流合', 'Yoshino Goryu');
    kanjiToRomaji.set('鉄炮', 'Tetsuhao');
    kanjiToRomaji.set('古河公方', 'Kogakubo'); // a way to refer to the government perhaps?
    kanjiToRomaji.set('改とやら', 'Arata Toyara'); // fake name Kageaki used in Ayane route
    // Some historical dude, google translates it as
    // Minamoto, but Kageaki says specifically Genzanmi
    kanjiToRomaji.set('源三位', 'Genzanmi (3rd)');

    return kanjiToRomaji;
};

const mistranslations = [
    ['武', 'Takeshi', 'Bushido'],
    ['ない', 'Okay', 'Yes'],
    ['改', 'Kai', 'Arata'],
];

const honorifics = new Map([
    ['さん', 'san'],
    ['サン', 'san'],
    ['様', 'sama'],
    ['さま', 'sama'],
    ['サマ', 'sama'],
    ['君', 'kun'],
    ['くん', 'kun'],
    ['クン', 'kun'],
    ['ちゃん', 'chan'],
    ['チャン', 'chan'],
    ['たん', 'tan'],
    ['タン', 'tan'],
    ['坊', 'bo'],
    ['ぼう', 'bo'],
    ['ボウ', 'bo'],
    ['先輩', 'senpai'],
    ['せんぱい', 'senpai'],
    ['センパイ', 'senpai'],
    ['先生', 'sensei'],
    ['せんせい', 'sensei'],
    ['センセイ', 'sensei'],
    ['氏', 'shi'],
    ['し', 'shi'],
    ['殿', 'dono'],
    ['との', 'tono'],
    ['どの', 'dono'],
    ['トノ', 'dono'],
    ['姉ちゃん', 'nēchan'],
    ['お姉ちゃん', 'onēchan'],
    ['姉さん', 'nēsan'],
    ['お姉さん', 'onēsan'],
    ['兄ちゃん', 'niichan'],
    ['お兄ちゃん', 'oniichan'],
    ['兄さん', 'niisan'],
    ['お兄さん', 'oniisan'],
]);

const dirPaths = new Set(RECORDING_LOCATIONS.map(l => l[0]));

const main = async () => {
    for (const dirPath of dirPaths) {
        const dirPath = location[0];
        const kanjiToRomaji = await collectKanjiToRomaji(dirPath);
        const transTxt = await fs.readFile(dirPath + '/translated_sentences.txt', 'utf8');
        const newJpnSentences = [];
        for (let [jpn, eng] of parseSentenceTranslationsFile(transTxt)) {
            for (let [kan, rom] of kanjiToRomaji) {
                let index;
                while ((index = jpn.indexOf(kan)) > -1) {
                    // console.log(jpn);
                    const postfix = jpn.slice(index + kan.length, index + kan.length + 5);
                    const honorific = [...honorifics].find(h => postfix.startsWith(h[0]));
                    if (honorific) {
                        kan += honorific[0];
                        rom += '-' + honorific[1];
                    }
                    jpn = jpn.replace(kan, rom);
                    // console.log('  '.repeat(index) + '^^'.repeat(kan.length) + ' - ' + rom + (honorific ? '---' + honorific[1] : ''));
                    // console.log(eng + '\n');
                }
            }
            // manual corrections
            for (let [kan, wrong, right] of mistranslations) {
                let bushidoAt;
                const takeshiAt = eng.indexOf(wrong);
                if (takeshiAt > -1 && (bushidoAt = jpn.indexOf(kan)) > -1) {
                    // I think it's some bug in google translate, for some reason
                    // it strongly believes that Bushido reads as Takeshi
                    // console.log(kan);
                    // console.log('  '.repeat(bushidoAt) + '^^'.repeat(kan.length) + ' - ' + right);
                    // console.log(eng + '\n');
                    jpn = jpn.replace(kan, right);
                }
            }
            newJpnSentences.push(jpn);
        }
        console.log('huj newJpnSentences', JSON.stringify(newJpnSentences));
        const jpnLinesHtml = `
            <head>
                <meta charset="utf8"/>
            </head>
            <body>
                <pre>
${newJpnSentences.join('\n')}
                </pre>
            </body>
        `;
        await fs.writeFile(dirPath + '/jpnLines.html', jpnLinesHtml)
    }
};

main().catch(error => {
    console.error('Main script execution failed', error);
    process.exit(1);
});