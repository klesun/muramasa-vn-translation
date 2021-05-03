
import {promises as fs} from "fs";
import {dirname} from "path";
import {fileURLToPath} from "url";
import {hasDeeplArtifacts, hasRepeatingSentences, hasUncertaintyArtifacts} from "../backend/DeeplCleaner.js";

const __dirname = dirname(fileURLToPath(import.meta.url));

const knownFalsePositives = [
    "But I'm not sure if my physical capabilities are up to the task of racing.　I'll have to see if my body is up to the task.",
    "Begin the descent and advance.　The enemy craft responded and came running up. Their determination to stay in the game is something to behold.　Altitude difference. The difference in speed. The difference in physical ability due to the degree of injury.　All in all, the game has already been won and lost. ----",
    "All of it.　The horror that makes my hair stand on end, all of it.",
    "In a short time, Ichijou's body has been transformed.　To accept rape.　To accept tyranny.",
    "This deity is also said to be a \"deity that comes from outside,\" and Yamato religious studies believe that this means a guest deity, or a deity that has come to Japan. But is this really the case? If Yamato is the origin of tsurugi (smithing), then faith, which is closely connected with smithing, must also originate in Yamato. In the Kamikaze period, faith and technology could not be separated. For them, religious rituals were an essential part of technology. Then, what does \"God from outside\" mean?",
    "\"Oh, ......, I know.　This is hostile territory, and I know it by heart.",
    "Oh, by the way.　In the midst of so many things, I had completely forgotten about it, but today is the day.",
    "The enemy shouldn't have given me a second to think about my strategy and should have just shot me.　The sights were just fine. I could fix it with shinogi anyway. It didn't matter if the sights were off at the time of firing.",
    "But only one. He left a path of retreat only downward.　If you throw a sidearm at me when I'm crouched down, it will only hit my helmet. No matter how clever the technique, it cannot penetrate the gap at the throat. The line of fire cannot pass through.",
    "Hamlet.　　The prince's revenge cost him and his enemies, as well as everyone else involved, and left nothing behind.",
    "\"It wasn't your training that made me laugh earlier.　It was your misunderstanding that made me laugh.",
    "\"He was a warrior.　And if a warrior is harmed by someone, it is his own fault, not the fault of others.",
    "Why are you here in the first place?　Why are you attacking me?",
    "Something is being lost.　Something is being taken away.",
    "You're an idiot. You're dead.　Tell the guards. If this happens again, you're going to the bunker too.",

];

const main = async () => {
    const expectedDupeSentenceStr = await fs.readFile(__dirname + '/fixtures/expectedDupeSentence.json');
    const expectedNoArtifactsStr = await fs.readFile(__dirname + '/fixtures/expectedNoArtifacts.json');
    const expectedUncertaintyArtifactsStr = await fs.readFile(__dirname + '/fixtures/expectedUncertaintyArtifacts.json');

    const expectedDupeSentence = JSON.parse(expectedDupeSentenceStr);
    const expectedNoArtifacts = JSON.parse(expectedNoArtifactsStr);
    const expectedUncertaintyArtifacts = JSON.parse(expectedUncertaintyArtifactsStr);
    const expectedUncertaintyArtifactsWithJpn = [
        {
            jpn: '男はいた。　酷くぞんざいで、だが奇妙に熱っぽい――そう、己を含めた世の何もかもを下らぬものと看做し嘲りつつそこに耽溺する、この男独特の風情を露わにしながら。',
            eng: 'There was a man.　It\'s not that I don\'t like it, it\'s just that I don\'t like it.',
        },
    ];

    // const expectedDupeSentence = [
    // ];
    // const expectedNoArtifacts = [
    // ];
    // const expectedUncertaintyArtifacts = [];

    for (const line of expectedDupeSentence) {
        const dupesDetected = hasRepeatingSentences(line);
        if (!dupesDetected) {
            console.error('Expected dupes not found:');
            console.error(JSON.stringify(line) + ',');
        }
    }

    for (const line of expectedNoArtifacts) {
        const artifactsDetected = hasDeeplArtifacts(line);
        if (artifactsDetected) {
            console.error('Unexpected artifacts found:');
            console.error(JSON.stringify(line) + ',');
        }
    }

    for (const line of expectedUncertaintyArtifacts) {
        const uncertaintyDetected = hasUncertaintyArtifacts(line);
        if (!uncertaintyDetected) {
            console.error('Expected uncertainty not found:');
            console.error(JSON.stringify(line) + ',');
        }
    }

    for (const {jpn, eng} of expectedUncertaintyArtifactsWithJpn) {
        const uncertaintyDetected = hasUncertaintyArtifacts(eng, jpn);
        if (!uncertaintyDetected) {
            console.error('Expected jpn uncertainty not found:');
            console.error(JSON.stringify(eng) + ',');
        }
    }
};

main().then(() => {
    process.exit(0);
}).catch(exc => {
    console.error(exc);
    process.exit(1);
});
