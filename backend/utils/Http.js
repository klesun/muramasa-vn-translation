
/**
 * @param {http.IncomingMessage} req
 * @return {Promise<string>}
 */
export const readPost = (req) => new Promise((ok, err) => {
    if (req.method === 'POST') {
        let body = '';
        req.on('data', (data) => body += data);
        req.on('error', (exc) => err(exc));
        req.on('end', () => ok(body));
    } else {
        ok('');
    }
});

/** @param {http.IncomingMessage} req */
export const readJson = async (req) => {
    const postStr = await readPost(req);
    if (!postStr) {
        const msg = 'POST body missing, must be a JSON string';
        throw new Error(msg);
    }
    return JSON.parse(postStr);
};
