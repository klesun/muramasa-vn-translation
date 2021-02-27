
import {readJson} from "../utils/Http.js";
import fetch from 'node-fetch';

/**
 * @param {http.IncomingMessage} req
 * @param {http.ServerResponse} res
 */
export default async (req, res) => {
    const proxyParams = await readJson(req);
    const {url, ...fetchParams} = proxyParams;
    const fetchRs = await fetch(url, fetchParams);
    fetchRs.headers.forEach((value, name) => {
        res.setHeader("proxied-header-" + name, value);
    });
    const body = await fetchRs.text();
    res.end(body);
};
