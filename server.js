import proxyRequest from "./backend/api/proxyRequest.js";
import streamSentences from "./backend/api/streamSentences.js";
import addGarejeyKeyframe from "./backend/api/addGarejeyKeyframe.js";
import * as url from 'url';
import * as fsSync from 'fs';
import * as path from 'path';
import * as http from 'http';
import {getMimeByExt} from 'klesun-node-tools/src/Utils/HttpUtil.js';
import {dirname} from "path";
import {fileURLToPath} from "url";

const fs = fsSync.promises;
const __dirname = dirname(fileURLToPath(import.meta.url));
const PUBLIC_PATH = path.resolve(__dirname, './public');

class HttpError extends Error {
    constructor(statusCode, message) {
        super(message);
        this.statusCode = statusCode;
    }
}

const serveStaticFile = async (rq, rs) => {
    const parsedUrl = url.parse(rq.url);
    const pathname = decodeURIComponent(parsedUrl.pathname);
    const normalizedPathname = pathname.endsWith('/')
        ? pathname + 'index.html'
        : pathname;

    const absPath = path.resolve(PUBLIC_PATH + '/' + normalizedPathname);
    if (!absPath.startsWith(PUBLIC_PATH + '/') && absPath !== PUBLIC_PATH) {
        throw new HttpError(400, 'Invalid path requested: ' + pathname);
    }
    if (!fsSync.existsSync(absPath)) {
        throw new HttpError(404, 'File ' + pathname + ' does not exist');
    }
    const ext = absPath.replace(/^.*\./, '');
    const mime = getMimeByExt(ext);
    if (mime) {
        rs.setHeader('Content-Type', mime);
    }
    fsSync.createReadStream(absPath).pipe(rs);
};

const handleHttpRequest = async (req, res) => {
    if (req.url === '/api/proxyRequest') {
        await proxyRequest(req, res);
    } else if (req.url === '/api/streamSentences') {
        await streamSentences(req, res);
    } else if (req.url === '/api/addGarejeyKeyframe') {
        await addGarejeyKeyframe(req, res);
    } else {
        await serveStaticFile(req, res);
    }
};

/**
 * @param {http.IncomingMessage} req
 * @param {http.ServerResponse} res
 */
const handleHttpRequestSafe = (req, res) => {
    handleHttpRequest(req, res).catch(exc => {
        res.statusCode = exc?.statusCode || 500;
        res.statusMessage = ((exc || {}).message || exc + '' || '(empty error)')
            // sanitize, as statusMessage seems to not allow special characters
            .slice(0, 300).replace(/[^ -~]/g, '?');
        res.end(JSON.stringify({error: exc + '', stack: exc.stack}));
    });
};

// const PORT = 80;
const PORT = 19424;

http.createServer(handleHttpRequestSafe)
    .listen(PORT, () => console.log('Now you can open http://localhost:' + PORT + '/views/untranslate.html in your browser ;)'));
