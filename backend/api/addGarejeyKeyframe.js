
import {readJson} from "../utils/Http.js";
import {promises as fs} from "fs";
import { dirname } from 'path';
import { fileURLToPath } from 'url';

const __dirname = dirname(fileURLToPath(import.meta.url));

/**
 * @param {http.IncomingMessage} req
 * @param {http.ServerResponse} res
 */
export default async (req, res) => {
    const {recordingDir, ...keyframe} = await readJson(req);
    const destination = __dirname + '/../../public/assets/' + recordingDir + '/adminKeyframes.json';
    await fs.appendFile(destination, JSON.stringify(keyframe, null, 4) + ',\n');
    res.end(JSON.stringify({
        status: 'SUCCESS',
    }));
};
