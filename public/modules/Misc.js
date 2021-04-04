
/**
 * @return RegExp
 *
 * to split complex regex into multiple lines, usage:
 * let regex = mkReg([
 *		/^>\$EX NAME\s+/,
 *		/(?<lastName>[A-Z][^\/]*)\//,
 *		/(?<firstName>[A-Z].*?)\s+/,
 *		/TX1\s+/,
 *		'(', mkReg([
 *			/(?<taxCurrency1>[A-Z]{3})\s+/,
 *			/(?<taxAmount1>\d*\.?\d+)\s+/,
 *			/(?<taxCode1>[A-Z0-9]{2})/,
 *		]), ')?\\s+',
 *	])
 */
export const mkReg = (parts, flags) => new RegExp(parts
    .map(r => typeof r === 'string' ? r : r.source)
    .join(''), flags);