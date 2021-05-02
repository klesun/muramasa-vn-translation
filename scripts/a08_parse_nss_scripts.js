
import { promises as fs } from 'fs';
import { dirname } from 'path';
import { fileURLToPath } from 'url';
import {ParseNwscript} from "../public/modules/ParseNwscript.js";

/**
 * @module - this script very crudely extracts story text from .nss NWScripts
 * it should probably be eventually replaced with a proper AST parser from
 * @see https://neverwintervault.org/project/nwnee/other/tool/nwnsc-nwn-enhanced-edition-script-compiler
 */

const __dirname = dirname(fileURLToPath(import.meta.url));

const main = async () => {
    const nssPath = __dirname + '/../public/assets/mc_revenge_route/nss_game_scripts/mc03/mc03_003.nss';
    const nssText = await fs.readFile(nssPath, 'utf8');
    const definitionsResult = ParseNwscript(nssText);
    console.log(JSON.stringify(definitionsResult));
    // console.dir(definitions, {depth: null});
};

main().catch(exc => {
    console.error(exc);
    process.exit(1);
});
