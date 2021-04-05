import {promises as fs} from "fs";
import {dirname} from "path";
import {fileURLToPath} from "url";

const __dirname = dirname(fileURLToPath(import.meta.url));

const routeDir = __dirname + '/../public/assets/mb_hero_route';
const recordingDir = routeDir + '/rec1';

const getSortValue = (googleScored) => {
    if (googleScored.length < 2) {
        return 0;
    }
    const uniqueness = googleScored[0].score - googleScored[1].score;
    return googleScored[0].score + uniqueness;
};

const main = async () => {
    const rawKeyframesStr = await fs.readFile(recordingDir + '/rawKeyframes.json', 'utf8');
    const rawKeyframes = JSON.parse(rawKeyframesStr)
        .sort((a,b) => getSortValue(b.googleScored) - getSortValue(a.googleScored));

    const adminKeyframesStr = await fs.readFile(recordingDir + '/adminKeyframes.json', 'utf8');
    const adminKeyframes = JSON.parse(adminKeyframesStr + 'null]').slice(0, -1);

    const autoKeyframes = [];
    const gareToFrame = {};
    for (const adminKeyframe of adminKeyframes) {
        gareToFrame[adminKeyframe.garejeiIndex] = adminKeyframe;
    }
    for (const rawKeyframe of rawKeyframes) {
        console.log('___________________________________');
        if (gareToFrame[rawKeyframe.garejeiIndex]) {
            console.log('Skipping manually placed frame: ' + rawKeyframe.garejeiIndex + ' - ' + rawKeyframe.garejei);
            continue;
        }

        const mustBeAfter = Object.values(gareToFrame).reverse().find(f => f.garejeiIndex < rawKeyframe.garejeiIndex);
        const mustBeBefore = Object.values(gareToFrame).find(f => f.garejeiIndex > rawKeyframe.garejeiIndex);
        const allGoogleScored = rawKeyframe.googleScored;
        const boundedScored = allGoogleScored.filter(option => {
            if (mustBeAfter && option.googleIndex <= mustBeAfter.googleIndex) {
                return false;
            }
            if (mustBeBefore && option.googleIndex >= mustBeBefore.googleIndex) {
                return false;
            }
            return true;
        });
        if (boundedScored[0] !== allGoogleScored[0]) {
            console.log('!!!!! best entry changed !!!!!');
        }
        console.log('<> window: ' + (mustBeAfter ? mustBeAfter.garejeiIndex : '...') + ' <-> ' + (mustBeBefore ? mustBeBefore.garejeiIndex : '...'));
        if (boundedScored.length < 1 || !boundedScored[0].score) {
            console.log('### skipping, as no options: ' + rawKeyframe.garejei);
            continue;
        }
        console.log(getSortValue(boundedScored), boundedScored[0].score, 'vs', boundedScored.length > 1 ? boundedScored[1].score : '(no alternatives)', (allGoogleScored.length - boundedScored.length) + ' outbounded');
        console.log(rawKeyframe.garejei);
        if (boundedScored.length === 1 && boundedScored[0].score < 3) {
            console.log('### skipping, as only option score is too low: ' + boundedScored[0].sentence);
            continue;
        }
        const ambiguities = boundedScored.filter(b => boundedScored[0].score / b.score < 1.66);
        if (ambiguities.length > 1 && ambiguities.some(a => Math.abs(a.googleIndex - boundedScored[0].googleIndex) > 4)) {
            console.log('### skipping, as ambiguous:');
            console.log('- ' + boundedScored[0].sentence);
            console.log('- ' + boundedScored[1].sentence);
            continue;
        }

        console.log(boundedScored[0].sentence);

        // TODO: resort when best entry changes
        const autoKeyframe = {
            garejeiIndex: rawKeyframe.garejeiIndex,
            garejei: rawKeyframe.garejei,
            googleIndex: boundedScored[0].googleIndex,
            google: boundedScored[0].sentence,
        };
        gareToFrame[rawKeyframe.garejeiIndex] = autoKeyframe;
        autoKeyframes.push(autoKeyframe);
    }

    await fs.writeFile(recordingDir + '/autoKeyframes.json', JSON.stringify(autoKeyframes.sort((a,b) => a.garejeiIndex - b.garejeiIndex), null, 4));
};

main().catch(exc => {
    console.error(exc);
    process.exit(1);
});
