
import { dirname } from 'path';
import { fileURLToPath } from 'url';
import TextractorToSrt from "../public/node_modules/vn-translation-tools/backend/TextractorToSrt.js";

/**
 * @module - this script transforms the output of textractor_capture.lua and a file
 * with each line translated to english into two srt files: for eng and for jap track
 */

const __dirname = dirname(fileURLToPath(import.meta.url));

const chapterDir = __dirname + '/../public/assets/mc_revenge_route/rec2';

const main = async () => {
    await TextractorToSrt({ chapterDir });
};

main().catch(exc => {
    console.error(exc);
    process.exit(1);
});
