These scripts are the life cycle of the extracted text:
- `a01_textractor_to_srt.js` - transform format from Textractor logs to `.jpn.srt` subs file
- `a02_preview_preserved_pronunciations_3pr.js` - prepare names and other not machine friendly terms to stay untranslated
- `a03_translate_srt.js` - translate `.jpn.srt` to `.eng.srt` using supplied `translated_sentences.txt` file
- `a04_untranslate.js` - structurize Garejei blog html into sentences json
- `a05_add_garejei_to_srt.js` - generate new `_gare.eng.srt` file using previously generated `.eng.srt` and `adminKeyframes.json` produced using admin web page