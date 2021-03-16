
const parseResponse = rs => rs.status !== 200
    ? Promise.reject(rs.statusText)
    : rs.json();

const post = (route, params) => {
    return fetch(route, {
        method: 'POST',
        body: JSON.stringify(params),
    }).then(parseResponse);
};

/**
 * @param {Response} rs
 * @return {AsyncGenerator<Uint8Array>}
 */
const streamResponseChunks = async function*(rs) {
    const reader = rs.body.getReader();
    while (true) {
        const { done, value } = await reader.read();
        if (done) break;
        yield value;
    }
};

export default {
    /**
     * @param {string} url = 'https://klesun-productions.com/doStuff'
     * @param {'GET'|'POST'} method
     * @param {string=} body - pass only if method is POST
     * @return Promise<Response>
     */
    proxyRequest: ({url, method, body = undefined}) => {
        return fetch('/api/proxyRequest', {
            method: 'POST',
            body: JSON.stringify({url, method, body}),
        });
    },
    /** @return {AsyncGenerator<Uint8Array>} */
    streamSentences: async function*() {
        const rs = await fetch('/api/streamSentences');
        yield * streamResponseChunks(rs);
    },
    addGarejeiKeyframe: (params) => post('/api/addGarejeyKeyframe', params),
};
