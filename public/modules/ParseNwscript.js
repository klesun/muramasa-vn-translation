/**
 * @see https://neverwintervault.org/project/nwnee/other/tool/nwnsc-nwn-enhanced-edition-script-compiler
 */
import {mkReg} from "./Misc.js";

const Ok = (value) => [null, value];
const Err = (error, incompleteValue = null) => [error, incompleteValue];

const TextBlock = (props = {}) => ({
    voice: null,
    inlinedStatements: [],
    textParts: [],
    skippedElements: [],
    ...props,
});

const elementsToTextBlocks = (elements) => {
    const result = {
        textId: '',
        textBlocks: [TextBlock()],
    };
    const last = () => result.textBlocks.slice(-1)[0];
    for (const element of elements) {
        if (element.kind === 'TEXT_ID') {
            result.textId = element.id;
        } else if (element.kind === 'LINE_COMMENT') {
            last().skippedElements.push(element);
        } else if (element.kind === 'INLINED_STATEMENTS') {
            if (last().inlinedStatements.length > 0) {
                return Err(new Error('Unexpected multiple code injections in same text block'), result);
            }
            last().inlinedStatements = element.statements;
        } else if (element.kind === 'XML_DOT') {
            if (element.tagName === 'voice') {
                last().voice = element.attributes;
            } else {
                last().textParts.push(element);
            }
        } else if (element.kind === 'XML_WRAP') {
            last().textParts.push(element);
        } else if (element.kind === 'PLAIN_TEXT') {
            const split = element.text.split(/\n{2,}/);
            last().textParts.push({
                kind: 'PLAIN_TEXT',
                text: split.shift(),
            });
            for (const text of split) {
                result.textBlocks.push(TextBlock({
                    textParts: [{
                        kind: 'PLAIN_TEXT',
                        text: text,
                    }],
                }));
            }
        } else {
            return Err(new Error('Unexpected element kind: ' + element.kind), result);
        }
    }
    return Ok(result);
};

/**
 * it is awfully inefficient
 * @param {string} nssText
 */
export const ParseNwscript = (nssText) => {
    let offset = 0;

    const getTextLeft = () => nssText.slice(offset);

    const SrcError = (reason) => {
        const preview = getTextLeft().slice(0, 15);
        const fullMessage = reason + ' - at ' + offset + ' - ' + JSON.stringify(preview);
        const error = new Error(fullMessage);
        error.reason = reason;
        error.offset = offset;
        error.preview = preview;
        return error;
    };

    /** @param {RegExp} regex */
    const unprefix = (regex) => {
        // for simplicity sake, taking a substring for now, but perfectly would
        // be to work with full string and pass offset to the regex function
        const textLeft = getTextLeft();
        const match = textLeft.match(mkReg([/^/, regex]));
        if (!match) {
            return null;
        } else {
            const shift = match[0].length;
            if (shift < 1) {
                // could lead to an infinite loop if you have a mistake in some of regexes
                const msg = "Empty pattern match in NSS parser - /" +
                    regex + "/ on text - " + textLeft.slice(0, 20);
                throw new Error(msg);
            }
            offset += shift;
            return match;
        }
    };

    const parseString = (quote) => {
        let escape = false;
        let result = '';
        for (; offset < nssText.length; ++offset) {
            const ch = nssText.charAt(offset);
            if (escape) {
                result += ch;
                escape = false;
            } else if (ch === '\\') {
                escape = true;
            } else if (ch === quote) {
                ++offset;
                return Ok(result);
            } else {
                result += ch;
            }
        }
        return Err('Unterminated string literal');
    };

    const skipTillClosed = (openCh = '', closeCh) => {
        let level = 1;
        let start = offset;
        for (; offset < nssText.length; ++offset) {
            if (nssText.slice(offset, offset + closeCh.length) === closeCh) {
                --level;
                if (level <= 0) {
                    const closed = nssText.slice(start, offset);
                    offset += closeCh.length;
                    return Ok(closed);
                }
            } else if (openCh && nssText.slice(offset, offset + openCh.length) === openCh) {
                ++level;
            } else if (nssText[offset] === '"') {
                const [error, content] = parseString(nssText[offset]);
                --offset; // so that next iteration increment did not skip a char
                if (error) {
                    return Err(error, nssText.slice(start, offset));
                }
            }
        }
        const closed = nssText.slice(start);
        return Err('Missing ' + closeCh + ' termination', closed);
    };

    // ===========================
    // statement parsing functions follow
    // ===========================

    const parseAsAssignment = () => {
        const match = unprefix(/([#$])((?:\w|[^\x00-\x7F])+)\s*=/);
        if (!match) {
            return null;
        }
        const [_, varKind, varName] = match;
        // let's hope this language does not have anonymous functions... though
        // if it does, that probably should be handled within skipTillClosed
        const statement = {
            kind: 'ASSIGNMENT',
            varKind: varKind,
            varName: varName,
            rawValue: '',
        };
        let error;
        [error, statement.rawValue] = skipTillClosed('', ';');
        return [error, statement];
    };

    const parseAsIf = () => {
        if (!unprefix(/if\s*\(/)) {
            return null;
        }
        const statement = {
            kind: 'IF',
            rawCondition: '',
            thenStatements: [],
            elseStatements: [],
        };
        let error;
        [error, statement.rawCondition] = skipTillClosed('(', ')');
        if (error) {
            return Err(error, statement);
        }
        if (!unprefix(/\s*{/)) {
            return Err('IF statement misses opening brace', statement);
        }
        [error, statement.thenStatements] = parseStatements();
        if (error) {
            return Err(error, statement);
        }
        if (unprefix(/\s*else\s*{/)) {
            [error, statement.elseStatements] = parseStatements();
            if (error) {
                return Err(error, statement);
            }
        }
        return Ok(statement);
    };

    const parseAsFunctionCall = () => {
        const match = unprefix(/((?:\w|[^\x00-\x7F])+)\(/);
        if (!match) {
            return null;
        }
        const statement = {
            kind: 'FUNCTION_CALL',
            name: match[1],
            rawArguments: '',
        };
        let error;
        [error, statement.rawArguments] = skipTillClosed('(', ')');
        if (error) {
            return Err(error, statement);
        }
        if (!unprefix(/\s*;/)) {
            return Err('Missing semicolon after side-effects function call', statement);
        }
        return Ok(statement);
    };

    const parseXmlAttributes = () => {
        const attributes = {};
        while (offset < nssText.length) {
            unprefix(/\s+/);
            let match;
            if (unprefix(/>/)) {
                return Ok(attributes);
            } else if (match = unprefix(/(\w+)\s*=\s*"/)) {
                const [error, value] = parseString('"');
                attributes[match[1]] = value;
                if (error) {
                    return Err(error, attributes);
                }
            } else if (match = unprefix(/@(\w+)/)) {
                attributes['@'] = attributes['@'] || [];
                attributes['@'].push(match[1]);
            } else {
                return Err('Unexpected XML attribute list token', attributes);
            }
        }
        return Err('Unterminated XML attributes list, missing ">"', attributes);
    };

    const parseXmlPreElement = () => {
        let match;
        if (match = unprefix(/(\.\.|)\/\/(.*)(?:\n|$)/)) {
            return Ok({
                kind: 'LINE_COMMENT',
                text: match[2],
            });
        } else if (match = unprefix(/\[(\w+)]/)) {
            return Ok({
                kind: 'TEXT_ID',
                id: match[1],
            });
        } else if (match = unprefix(/<([A-Z]+)/)) {
            const element = {
                kind: 'XML_WRAP',
                tagName: match[1],
                attributes: {},
                innerXML: '',
            };
            let error;
            [error, element.attributes] = parseXmlAttributes();
            if (error) {
                return Err(error, element);
            }
            [error, element.innerXML] = skipTillClosed('<' + element.tagName, '</' + element.tagName + '>');
            return [error, element];
        } else if (match = unprefix(/<([a-z]+)/)) {
            const element = {
                kind: 'XML_DOT',
                tagName: match[1],
                attributes: {},
            };
            let error;
            [error, element.attributes] = parseXmlAttributes();
            return [error, element];
        } else if (unprefix(/{/)) {
            const element = {
                kind: 'INLINED_STATEMENTS',
                statements: [],
            };
            let error;
            [error, element.statements] = parseStatements();
            return [error, element];
        } else {
            return [null, null];
        }
    };

    const parseXmlPreElements = () => {
        const elements = [];
        while (offset < nssText.length) {
            if (unprefix(/<\/PRE>/)) {
                return Ok(elements);
            }
            const [error, element] = parseXmlPreElement();
            if (element) {
                elements.push(element);
            } else {
                let lastPart = elements.slice(-1)[0];
                if (!lastPart || lastPart.kind !== 'PLAIN_TEXT') {
                    lastPart = {kind: 'PLAIN_TEXT', text: ''};
                    elements.push(lastPart);
                }
                lastPart.text += unprefix(/[\s\S]/)[0];
            }
            if (error) {
                return Err(error, elements);
            }
        }
        return Err('Unterminated XML <PRE> tag', elements);
    };

    const parseAsXml = () => {
        const match = unprefix(/<([A-Z]+)/);
        if (!match) {
            return null;
        }
        const statement = {
            kind: 'XML_WRAP',
            tagName: match[1],
            attributes: {},
            textId: '',
            textBlocks: undefined,
            elements: undefined,
            innerXML: undefined,
        };
        let error;
        [error, statement.attributes] = parseXmlAttributes();
        if (error) {
            return Err(error, statement);
        }
        if (statement.tagName === 'PRE') {
            let elements;
            [error, elements] = parseXmlPreElements();
            if (error) {
                statement.elements = elements;
                return Err(error, statement);
            }
            let collected;
            [error, collected] = elementsToTextBlocks(elements);
            Object.assign(statement, collected);
        } else {
            [error, statement.innerXML] = skipTillClosed('<' + statement.tagName, '</' + statement.tagName + '>');
        }
        return [error, statement];
    };

    const parseStatement = () => {
        unprefix(/\s+/);
        let error;
        let match;
        let result;
        if (match = unprefix(/(\.\.|)\/\/(.*)(?:\n|$)/)) {
            return Ok({
                kind: 'LINE_COMMENT',
                text: match[2],
            });
        } else if (result = parseAsAssignment()) {
            return result;
        } else if (result = parseAsIf()) {
            return result;
        } else if (result = parseAsFunctionCall()) {
            return result;
        } else if (result = parseAsXml()) {
            return result;
        } else if (unprefix(/call_scene\s+/)) {
            const statement = {
                kind: 'CALL_SCENE',
                rawIdExpression: '',
            };
            [error, statement.rawIdExpression] = skipTillClosed('', ';');
            return [error, statement];
        } else {
            return Err('Unsupported statement');
        }
    };

    const parseStatements = () => {
        const statements = [];
        while (offset < nssText.length) {
            unprefix(/\s+/);
            if (unprefix(/}/)) {
                break;
            }
            const [error, statement] = parseStatement();
            if (statement) {
                statements.push(statement);
            }
            if (error) {
                return Err(error, statements);
            }
        }
        return Ok(statements);
    };

    // ===========================
    // definitions parsing functions follow
    // ===========================

    const parseDefinitions = () => {
        const definitions = [];
        while (offset < nssText.length) {
            unprefix(/\s+/);
            let definition = null;
            let error = null;
            let match;
            if (match = unprefix(/(\.\.|)\/\/(.*)(?:\n|$)/)) {
                definition = {
                    kind: 'LINE_COMMENT',
                    text: match[2],
                };
            } else if (match = unprefix(/chapter\s+(\w+)\s*{/)) {
                definition = {
                    kind: 'CHAPTER',
                    name: match[1],
                    statements: [],
                };
                [error, definition.statements] = parseStatements();
            } else if (match = unprefix(/scene\s+([\w.]+)\s*{/)) {
                definition = {
                    kind: 'SCENE',
                    name: match[1],
                    statements: [],
                };
                [error, definition.statements] = parseStatements();
            } else {
                error = 'Unsupported definition';
            }
            if (definition) {
                definitions.push(definition);
            }
            if (error) {
                return Err(SrcError(error), definitions);
            }
        }
        return Ok(definitions);
    };

    return parseDefinitions();
};
