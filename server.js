import proxyRequest from "./backend/api/proxyRequest.js";
import streamSentences from "./backend/api/streamSentences.js";

import nodeStatic from 'node-static';
import * as http from 'http';

const file = new (nodeStatic.Server)('./public');

const handleHttpRequest = async (req, res) => {
    if (req.url === '/api/proxyRequest') {
        await proxyRequest(req, res);
    } else if (req.url === '/api/streamSentences') {
        await streamSentences(req, res);
    } else {
        await file.serve(req, res);
    }
};

/**
 * @param {http.IncomingMessage} req
 * @param {http.ServerResponse} res
 */
const handleHttpRequestSafe = (req, res) => {
    handleHttpRequest(req, res).catch(exc => {
        res.statusCode = 500;
        res.statusMessage = ((exc || {}).message || exc + '' || '(empty error)')
            // sanitize, as statusMessage seems to not allow special characters
            .slice(0, 300).replace(/[^ -~]/g, '?');
        res.end(JSON.stringify({error: exc + '', stack: exc.stack}));
    });
};

http.createServer(handleHttpRequestSafe)
    .listen(80, () => console.log('Now you can open http://localhost:80 in your browser ;)'));
