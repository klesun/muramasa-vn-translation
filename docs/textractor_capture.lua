--[[
ProcessSentence is called each time Textractor receives a sentence of text.

Param sentence: sentence received by Textractor (UTF-8).
Param sentenceInfo: table of miscellaneous info about the sentence.

If you return a string, the sentence will be turned into that string.
If you return nil, the sentence will be unmodified.

This extension uses several copies of the Lua interpreter for thread safety.
Modifications to global variables from ProcessSentence are not guaranteed to persist.

Properties in sentenceInfo:
"current select": 0 unless sentence is in the text thread currently selected by the user.
"process id": process id that the sentence is coming from. 0 for console and clipboard.
"text number": number of the current text thread. Counts up one by one as text threads are created. 0 for console, 1 for clipboard.
--]]
function ProcessSentence(sentence, sentenceInfo)
  if sentenceInfo["current select"] ~= 0 and sentenceInfo["text number"] ~= 0 then
    local file = io.open("C:\\gits\\muramasa-vn-translation\\textractor_sentences.txt", "a+")
    local handle = io.popen("echo %time%")
    local result = handle:read("*a")
    handle:close()
    file:write(tostring(os.time()), "\n", tostring(result), sentence, "\n")
    file:close()
  end
end

