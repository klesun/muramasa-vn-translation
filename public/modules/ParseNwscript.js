/**
 * @see https://neverwintervault.org/project/nwnee/other/tool/nwnsc-nwn-enhanced-edition-script-compiler
 */
import {mkReg} from "./Misc.js";

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

    const Ok = (value) => [null, value];
    const Err = (error, incompleteValue = null) => [error, incompleteValue];

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
                return Ok(result);
            } else {
                result += ch;
            }
        }
        return Err(SrcError('Unterminated string literal'));
    };

    const skipTillClosed = (openCh = '', closeCh) => {
        let level = 1;
        let start = offset;
        for (; offset < nssText.length; ++offset) {
            const ch = nssText[offset];
            if (openCh && ch === openCh) {
                ++level;
            } else if (ch === closeCh) {
                --level;
                if (level <= 0) {
                    const closed = nssText.slice(start, offset);
                    ++offset;
                    return Ok(closed);
                }
            } else if (ch === '"') {
                const [error, content] = parseString(ch);
                if (error) {
                    return Err(error, nssText.slice(start, offset));
                }
            }
        }
        const closed = nssText.slice(start);
        return Err(SrcError('Missing ' + closeCh + ' termination '), closed);
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
            return [error, statement];
        }
        if (!unprefix(/\s*{/)) {
            return [SrcError('IF statement misses opening brace'), statement];
        }
        [error, statement.thenStatements] = parseStatements();
        if (!error && unprefix(/\s*else\s*{/)) {
            [error, statement.elseStatements] = parseStatements();
        }
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
            return [error, statement];
        }
        if (!unprefix(/\s*;/)) {
            error = SrcError('Missing semicolon after side-effects function call');
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
        } else if (unprefix(/call_scene\s+/)) {
            const statement = {
                kind: 'CALL_SCENE',
                rawIdExpression: '',
            };
            [error, statement.rawIdExpression] = skipTillClosed('', ';');
            return [error, statement];
        } else {
            return Err(SrcError('Unsupported statement'));
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
                error = SrcError('Unsupported definition');
            }
            if (definition) {
                definitions.push(definition);
            }
            if (error) {
                return Err(error, definitions);
            }
        }
        return Ok(definitions);
    };

    return parseDefinitions();
};
