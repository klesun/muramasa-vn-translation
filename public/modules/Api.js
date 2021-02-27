
const get = (route, params = null) => {
    const queryPart = !params ? '' :
        '?' + new URLSearchParams(params);
    return fetch(route + queryPart)
        .then(rs => rs.status !== 200
            ? Promise.reject(rs.statusText)
            : rs.json());
};

const post = (route, params) => {
    return fetch(route, {
        method: 'POST',
        body: JSON.stringify(params),
    }).then(rs => rs.status !== 200
        ? Promise.reject(rs.statusText)
        : rs.json());
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
};