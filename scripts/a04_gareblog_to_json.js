import {mkReg} from "../public/modules/Misc.js";
import {promises as fs} from "fs";
import jsdom from 'jsdom';
import { dirname } from 'path';
import { fileURLToPath } from 'url';

const __dirname = dirname(fileURLToPath(import.meta.url));

const parseGarejeiBlock = (p, i) => {
    const children = [...p.children];
    if (children.length === 0 || children[0] !== p.childNodes[0]) {
        const text = p.textContent;
        const asQuote = text.match(mkReg([
            /^(\s*\*.*?\*\s*|)/,
            '(',
            /[a-zA-Z.…'’\/\-]+/,
            /(?:\s+\(?[a-zA-Z.'’\/\-]+\)?){0,2}/,
            ')',
            /(\s*\*.*?\*\s*|):\s*(\S.*)$/,
        ], 's'));
        const asAnonQuote = text.match(/^\s*[“”"]\s*(\S.*)[“”"]\s*$/);
        if (asQuote) {
            const [, pretext, speaker, posttext, text] = asQuote;
            return [{
                type: 'quote', speaker, text,
                ...pretext ? {pretext} : {},
                ...posttext ? {posttext} : {},
            }];
        } else if (asAnonQuote) {
            const [, text] = asAnonQuote;
            return [{type: 'quote', speaker: '', text}];
        } else {
            return [{type: 'comment', text: p.textContent}];
        }
    } else if (children.every(c => c.tagName === 'EM')) {
        const text = p.textContent.trimEnd();
        return [{type: i < 3 ? 'webpageTechnicalPart' : 'innerThought', text}];
    } else if (children.every(c => c.tagName === 'A' && c.querySelector('img'))) {
        return children.map(c => {
            const img = c.querySelector('img');
            return {type: 'image', src: img.getAttribute('src')};
        });
    } else if (children.every(c => c.tagName === 'A' && c.textContent.trim() === '')) {
        return [{type: 'nbspLinks', nbspLinks: children.map(c => c.getAttribute('href'))}];
    }
    return [{type: 'unknown', innerHTML: p.innerHTML, text: p.textContent}];
};

const GARE_BLOGS = [
    {
        garejeiPath: __dirname + '/../docs/garejei_mirror/Chapter 5 _ gareblogs.htm',
        chapterDir: __dirname + '/../public/assets/ma_common_route/ma05_star_craft',
    },
    {
        garejeiPath: __dirname + '/../docs/garejei_mirror/Hero (Ichijou’s Route finale) _ gareblogs.htm',
        chapterDir: __dirname + '/../public/assets/mb_hero_route',
    },
];

const main = async () => {
    for (const {garejeiPath, chapterDir} of GARE_BLOGS) {
        const garejeiHtml = await fs.readFile(garejeiPath, 'utf8');
        const garejeiDom = new jsdom.JSDOM(garejeiHtml);
        const nodeList = garejeiDom.window.document
            .querySelectorAll('.entry-content > *');
        const garejeiBlocks = [...nodeList]
            .flatMap(parseGarejeiBlock);

        await fs.writeFile(chapterDir + '/garejeiBlocks.json', JSON.stringify(garejeiBlocks, null, 4));
    }
};

main().catch(exc => {
    console.error(exc);
    process.exit(1);
});