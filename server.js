import proxyRequest from "./backend/api/proxyRequest.js";

import * as nodeStatic from 'node-static';
import * as http from 'http';

const file = new (nodeStatic.Server)('./public');

/**
 * @param {http.IncomingMessage} req
 * @param {http.ServerResponse} res
 */
http.createServer(function (req, res) {
    if (req.url === '/api/proxyRequest') {
        proxyRequest(req, res).catch(exc => {
            res.statusCode = 500;
            res.statusMessage = ((exc || {}).message || exc + '' || '(empty error)')
                // sanitize, as statusMessage seems to not allow special characters
                .slice(0, 300).replace(/[^ -~]/g, '?');
            res.end(JSON.stringify({error: exc + '', stack: exc.stack}));
        });
    } else {
        console.log(req.url);
        file.serve(req, res);
    }
}).listen(80, () => console.log('Now you can open http://localhost:80 in your browser ;)'));
