
import { promises as fs } from 'fs';
import { dirname } from 'path';
import { fileURLToPath } from 'url';

const __dirname = dirname(fileURLToPath(import.meta.url));

/** possibly some smarter file watching could be applied, even though it's Windows */
const POLL_WAIT_MS = 50;

const path = __dirname + '/../../textractor_sentences.txt';

let streaming = false;

/**
 * @param {http.IncomingMessage} req
 * @param {http.ServerResponse} res
 */
export default async (req, res) => {
    if (streaming) {
        throw new Error('Only one request can be streaming at a time');
    }
    streaming = true;

    res.setHeader('content-type', 'text/plain');

    let lastSize = 0;
    while (!req.aborted) {
        const statInfo = await fs.stat(path);
        if (statInfo.size > lastSize) {
            const readSize = statInfo.size - lastSize;
            const readBuffer = Buffer.alloc(readSize);
            const handle = await fs.open(path, 'r');
            // dunno, possibly can keep it open, need check
            await handle.read(readBuffer, 0, readSize, lastSize)
                .finally(() => handle.close());

            res.write(readBuffer);

            lastSize = statInfo.size;
        }
        await new Promise(_ => setTimeout(_, POLL_WAIT_MS));
    }

    streaming = false;
    res.end();
};