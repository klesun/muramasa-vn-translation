/**
 * @see https://neverwintervault.org/project/nwnee/other/tool/nwnsc-nwn-enhanced-edition-script-compiler
 */
import {mkReg} from "./Misc.js";

const Ok = (value) => [null, value];
const Err = (error, incompleteValue = null) => [error, incompleteValue];

const XML_WRAP_TAGS = new Set([
    'RUBY', // wrapped text displayed as is, and over it, in small letters are displayed characters from the `text`
            // attribute - on most part it's either a hiragana pronunciation of rare kanji or synonyms expressing
            // what characters actually think/feel/say
    'PRE', // ma04_014vs.nss - <PRE>The paradox of "Tell and apple".</PRE>
           // I suspect it has something to do with non-full-width latin characters
    'I', // italic I assume
    'FONT', // has `incolor` attribute that takes a CSS format hex color
]);
const XML_DOT_TAGS = new Set([
    'BR', // like html I assume
    'k', // can be placed between words to delay further print until player presses a button
    'K', // guess tags are case-insensitive...
    'voice', // specifies the audio file to be played when following text is displayed
    'VALUE', // I think it shows text stored in a variable by it's `name` attribute
]);

const isXmlWrapTag = (tagName) => {
    if (XML_WRAP_TAGS.has(tagName)) {
        return Ok(true);
    } else if (XML_DOT_TAGS.has(tagName)) {
        return Ok(false);
    } else {
        return Err('Unsupported XML tag - ' + tagName);
    }
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
        const line = nssText.slice(0, offset).split('\n').length;
        const column = nssText.slice(0, offset).replace(/[\s\S]+\n/, '').length + 1;
        const fullMessage = reason + ' - at ' + line + ':' + column +
            ' (' + offset + ') - ' + JSON.stringify(preview);
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

    const skipTillClosedAny = (openCh = '', length, predicate) => {
        let level = 1;
        let start = offset;
        for (; offset < nssText.length; ++offset) {
            if (predicate(nssText.slice(offset, offset + length))) {
                --level;
                if (level <= 0) {
                    const closed = nssText.slice(start, offset);
                    offset += length;
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
        return Err('Missing termination', closed);
    };

    const skipTillClosed = (openCh = '', closeCh) => {
        return skipTillClosedAny(openCh, closeCh.length, textPart => textPart === closeCh);
    };

    const parseAsCodeTypoArtifact = () => {
        const match =
            unprefix(/([.=―]+)(.*)\n/) ||
            unprefix(/<voice.*\n/) ||
            unprefix(/「[\s\S]*?」/s);
        if (!match) {
            return null;
        }
        return Ok({
            kind: 'CODE_TYPO_ARTIFACT',
            text: match[0],
        });
    };

    // // ...
    const parseAsLineComment = () => {
        const match = unprefix(/\/{2}(.*)(?:\n|$)/);
        if (!match) {
            return null;
        }
        return Ok({
            kind: 'LINE_COMMENT',
            text: match[1],
        });
    };

    // /* ... */
    const parseAsBlockComment = () => {
        const match = unprefix(/\/\*/);
        if (!match) {
            return null;
        }
        const text = skipTillClosed('', '*/');
        return Ok({
            kind: 'BLOCK_COMMENT',
            text: text,
        });
    };

    // ===========================
    // statement parsing functions follow
    // ===========================

    const VAR_NAME_REGEX = /((?:\w|[^\x00-\x7F])+)/;

    const parseAsAssignment = () => {
        // allow more than one leading $ to fix code mistakes - mc01_003.nss
        const regex = mkReg([/([#$]+)/, VAR_NAME_REGEX ,/\s*([+\-*/]?=)/]);
        const match = unprefix(regex);
        if (!match) {
            return null;
        }
        const [_, varKind, varName, operation] = match;
        // let's hope this language does not have anonymous functions... though
        // if it does, that probably should be handled within skipTillClosed
        const statement = {
            kind: 'ASSIGNMENT',
            varKind: varKind,
            varName: varName,
            operation: operation,
            rawValue: '',
        };
        let error;
        // assuming there are no stuff like function calls wrapped to multiple lines, so far holds true...
        [error, statement.rawValue] = skipTillClosedAny('', 1, textPart => [';', '\n'].includes(textPart));
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
            elseIfs: [],
            elseStatements: [],
        };
        let error;
        [error, statement.rawCondition] = skipTillClosed('(', ')');
        if (error) {
            return Err(error, statement);
        }
        if (!unprefix(/\s*{/)) {
            return Err('IF statement lacks opening brace', statement);
        }
        [error, statement.thenStatements] = parseStatements();
        if (error) {
            return Err(error, statement);
        }
        for (let i = 0; unprefix(/\s*else\s+if\s*\(/); ++i) {
            let error;
            statement.elseIfs[i] = {
                rawCondition: '',
                thenStatements: [],
            };
            [error, statement.elseIfs[i].rawCondition] = skipTillClosed('(', ')');
            if (error) {
                return Err(error, statement);
            }
            if (!unprefix(/\s*{/)) {
                return Err('ELSE IF branch lacks opening brace', statement);
            }
            [error, statement.elseIfs[i].thenStatements] = parseStatements();
            if (error) {
                return Err(error, statement);
            }
        }
        if (unprefix(/\s*else\s*{/)) {
            [error, statement.elseStatements] = parseStatements();
            if (error) {
                return Err(error, statement);
            }
        }
        return Ok(statement);
    };

    const parseAsWhile = () => {
        const match = unprefix(/while\s*\(/);
        if (!match) {
            return null;
        }
        const statement = {
            kind: 'WHILE',
            rawCondition: '',
            statements: [],
        };
        let error;
        [error, statement.rawCondition] = skipTillClosed('(', ')');
        if (error) {
            return Err(error, statement);
        }
        if (!unprefix(/\s*{/)) {
            return Err('IF statement misses opening brace', statement);
        }
        [error, statement.statements] = parseStatements();
        return [error, statement];
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
        if (!unprefix(/\s*[;\n]/)) {
            return Err('Missing semicolon after side-effects function call', statement);
        }
        return Ok(statement);
    };

    /**
     * most likely NWScript allows any expression to be called as statement,
     * but I don't want to parse expression just yet and probably ever
     */
    const parseAsVarIncrement = () => {
        const regex = mkReg([/\$/, VAR_NAME_REGEX ,/\+\+\s*;/]);
        const match = unprefix(regex);
        if (!match) {
            return null;
        }
        return Ok({
            kind: 'VAR_INCREMENT',
            name: match[1],
        });
    };

    const parseAsExpression = () => {
        let match;
        if (unprefix(/"/)) {
            const expression = {
                kind: 'STRING_LITERAL',
                value: '',
            };
            let error;
            [error, expression.value] = parseString('"');
            return [error, expression];
        } else if (match = unprefix(/\d+(?:\.\d+|)/)) {
            return Ok({
                kind: 'NUMBER_LITERAL',
                value: match[0],
            });
        } else if (match = unprefix(mkReg([/\$/, VAR_NAME_REGEX]))) {
            return Ok({
                kind: 'VARIABLE_REFERENCE',
                name: match[1],
            });
        } else {
            return null;
        }
    };

    const parseXmlAttributes = () => {
        const attributes = [];
        while (offset < nssText.length) {
            unprefix(/\s+/);
            let match;
            if (unprefix(/>/)) {
                return Ok(attributes);
            } else if (match = unprefix(/(\w+)\s*=\s*/)) {
                const [error, value] = parseAsExpression() || Err('Unsupported expression');
                attributes.push({
                    kind: 'NAMED_ATTRIBUTE',
                    name: match[1],
                    value: value,
                });
                if (error) {
                    return Err(error, attributes);
                }
            } else if (match = unprefix(/@(\w+)/)) {
                attributes.push({
                    kind: 'SET_ATTRIBUTE',
                    name: match[1],
                });
            } else {
                return Err('Unexpected XML attribute list token', attributes);
            }
        }
        return Err('Unterminated XML attributes list, missing ">"', attributes);
    };

    const parseXmlPreElement = () => {
        let result;
        let match;
        if (result = parseAsLineComment()) {
            return result;
        } else if (match = unprefix(/\[(\w+)]/)) {
            return Ok({
                kind: 'TEXT_ID',
                id: match[1],
            });
        } else if (match = unprefix(/<([a-zA-Z]+)/)) {
            const element = {
                kind: 'XML_TAG',
                tagName: match[1],
                attributes: {},
                isWrap: undefined,
                innerXML: undefined,
            };
            let error;
            [error, element.attributes] = parseXmlAttributes();
            if (error) {
                return Err(error, element);
            }
            [error, element.isWrap] = isXmlWrapTag(element.tagName);
            if (error) {
                return Err(error, element);
            }
            if (element.isWrap) {
                // TODO: mind that opening can also be in different case!
                const terminator = ('</' + element.tagName + '>').toLowerCase();
                const predicate = textPart => textPart.toLowerCase() === terminator;
                [error, element.innerXML] = skipTillClosedAny('<' + element.tagName, terminator.length, predicate);
            }
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
            [error, statement.elements] = parseXmlPreElements();
        } else {
            [error, statement.innerXML] = skipTillClosed('<' + statement.tagName, '</' + statement.tagName + '>');
        }
        return [error, statement];
    };

    const parseAsCallScene = () => {
        if (!unprefix(/call_scene\s+/)) {
            return null;
        }
        const statement = {
            kind: 'CALL_SCENE',
            rawIdExpression: '',
        };
        let error;
        [error, statement.rawIdExpression] = skipTillClosed('', ';');
        return [error, statement];
    };

    const parseAsSelect = () => {
        if (!unprefix(/select\s+{/)) {
            return null;
        }
        const statement = {
            kind: 'SELECT',
            statements: [],
        };
        let error;
        [error, statement.statements] = parseStatements();
        return [error, statement];
    };

    /**
     * I assume it can be only inside `select`,
     * but that's semantics I guess, not syntax
     */
    const parseAsCase = () => {
        if (!unprefix(/case\s+/)) {
            return null;
        }
        const statement = {
            kind: 'CASE',
            rawCondition: '',
            statements: [],
        };
        let error;
        [error, statement.rawCondition] = skipTillClosed('', '{');
        if (error) {
            return Err(error, statement);
        }
        [error, statement.statements] = parseStatements();
        return [error, statement];
    };

    const parseAsBeginLabel = () => {
        if (!unprefix(/begin:\s+/)) {
            return null;
        }
        return Ok({ kind: 'BEGIN_LABEL' });
    };

    const parseAsScopeBlock = () => {
        if (!unprefix(/{/)) {
            return null;
        }
        const statement = {
            kind: 'SCOPE_BLOCK',
            statements: [],
        };
        let error;
        [error, statement.statements] = parseStatements();
        return [error, statement];
    };

    const parseStatement = () => {
        const result =
            parseAsBeginLabel() ||
            parseAsLineComment() ||
            parseAsBlockComment() ||
            parseAsAssignment() ||
            parseAsIf() ||
            parseAsWhile() ||
            parseAsFunctionCall() ||
            parseAsVarIncrement() ||
            parseAsXml() ||
            parseAsCallScene() ||
            parseAsSelect() ||
            parseAsCase() ||
            parseAsScopeBlock() ||
            parseAsCodeTypoArtifact();
        if (result) {
            return result;
        } else {
            return Err('Unsupported statement');
        }
    };

    const parseStatements = () => {
        const statements = [];
        while (offset < nssText.length) {
            unprefix(/[\s;]+/);
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
            let definition = null;
            let error = null;
            let result;
            let match;
            if (unprefix(/\s+/)) {
                continue;
            } else if (result = parseAsLineComment()) {
                [error, definition] = result;
            } else if (result = parseAsBlockComment()) {
                [error, definition] = result;
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
            } else if (match = unprefix(/function\s+([\w.]+)\s*\(/)) {
                definition = {
                    kind: 'FUNCTION',
                    name: match[1],
                    rawArguments: '',
                    statements: [],
                };
                let error;
                [error, definition.rawArguments] = skipTillClosed('(', ')');
                if (error) {
                    return Err(error, definition);
                }
                if (!unprefix(/\s*{/)) {
                    return Err('Missing opening brace of function body', definition);
                }
                [error, definition.statements] = parseStatements();
            } else if (unprefix(/}/)) {
                // ma04_003.nss
                // seems to be yet another code typo that their interpreter tolerates... php flashbacks
                continue;
            } else if (unprefix(/continuation number="\d+">/)) {
                // more code mistakes cleanup - missing "//<" at line start
                continue;
            } else if (result = parseAsCodeTypoArtifact()) {
                [error, definition] = result;
            } else if (result = parseStatement()) {
                // I think it's yet again code typos, but oh well
                [error, definition] = result;
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
