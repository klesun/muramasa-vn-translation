
import GoogleTranslateTk from './GoogleTranslateTk.js';
import Api from './Api.js';

/**
 * @param {string} line
 * @param tkkHourlySalt - take from window.TKK on google translate page
 *     const TKK = '443658.3451255544';
 */
export default async ({
    line,
    tkkHourlySalt = 443659.1100698392,
    sourceLang = 'ja',
    targetLang = 'en',
}) => {
    const query = new URLSearchParams({
        "client": "webapp",
        "sl": sourceLang, // source language
        "tl": targetLang, // target language
        "hl": targetLang, // dunno
        "dt": "t", // mandatory it seems
        "tk": GoogleTranslateTk(line, tkkHourlySalt),
        "q": line, // text to translate
    });

    // const response = await fetch("https://translate.google.ru/translate_a/single?" + query, {
    //     "method": "GET", "mode": "cors", "credentials": "include"
    // }).then(rs => rs.json());

    const response = await Api.proxyRequest({
        url: "https://translate.google.ru/translate_a/single?" + query,
        method: 'GET',
    }).then(rs => rs.json());
    const [sentences, , srcLang] = response;

    return sentences.map(([result, src]) => result).join('');
    //translated = response[0][0][0];
    // const response = await translate(line, {from: 'en', to: lang});
    // translated = response.text;
};