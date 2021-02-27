import Api from "./modules/Api.js";
import TranslateLine from "./modules/TranslateLine.js";

const gui = {
    translated_output: document.getElementById('translated_output'),
};

const main = async () => {
    for await (const part of Api.streamSentences()) {
        // should be checking for cases when utf character was split into bytes, but nah, too rare
        const textPart = new TextDecoder("utf-8").decode(part);
        const lines = textPart.trimEnd().split(/[\r\n]+/);
        if (lines.length === 3) {
            const [seconds, centiseconds, japLine] = lines;
            gui.translated_output.value += japLine + '\n';
            gui.translated_output.scrollTop = gui.translated_output.scrollHeight;
            const engLine = await TranslateLine({line: japLine});
            gui.translated_output.value += engLine + '\n\n';
            gui.translated_output.scrollTop = gui.translated_output.scrollHeight;
        } else {
            gui.translated_output.value += textPart;
            gui.translated_output.scrollTop = gui.translated_output.scrollHeight;
        }
    }
};

main().catch(exc => {
    console.error(exc);
    alert('Main function execution failed - ' + exc);
});