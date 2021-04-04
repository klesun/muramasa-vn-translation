# Soukou Akki Muramasa VN Translation
### 装甲悪鬼村正 | Full Metal Demon Muramasa

#### Full Playlist: https://www.youtube.com/playlist?list=PLlRk_Elz9MdaZRPMCMZyAXNt3bGAQMBJZ
________________________________

# How to contribute
### (make corrections for obvious mistakes in machine translation)

- Create a [github account](https://github.com/join?ref_cta=Sign+up&ref_loc=header+logged+out&ref_page=%2F&source=header-home) if you don't have one
- Navigate to the `translated_sentences.txt` file containing the chapter for which you want to submit a correction:
    - Common Route Chapter 5
        - [Recording 1](https://github.com/klesun/muramasa-vn-translation/blob/master/assets/recordings/chapter5/translated_sentences.txt) \#50-61
    - Hero Route
        - [Recording 1](https://github.com/klesun/muramasa-vn-translation/blob/master/assets/recordings/ayane_route/rec1/translated_sentences.txt) \#62
        - [Recording 2](https://github.com/klesun/muramasa-vn-translation/blob/master/assets/recordings/ayane_route/rec2/translated_sentences.txt) \#63-66
        - [Recording 3](https://github.com/klesun/muramasa-vn-translation/blob/master/assets/recordings/ayane_route/rec3/translated_sentences.txt) \#67
    - Revenge Route
        - [Recording 1](https://github.com/klesun/muramasa-vn-translation/blob/master/assets/recordings/ootori_route/rec1/translated_sentences.txt) \#68
        - [Recording 2](https://github.com/klesun/muramasa-vn-translation/blob/master/assets/recordings/ootori_route/rec2/translated_sentences.txt) \#69
        - [Recording 3](https://github.com/klesun/muramasa-vn-translation/blob/master/assets/recordings/ootori_route/rec3/translated_sentences.txt) \#70
        - [Recording 4](https://github.com/klesun/muramasa-vn-translation/blob/master/assets/recordings/ootori_route/rec4/translated_sentences.txt) \#71-73
    - Tyrant Route
        - [Recording 1](https://github.com/klesun/muramasa-vn-translation/blob/master/assets/recordings/devil_route/rec1/translated_sentences.txt) \#74
        - [Recording 2](https://github.com/klesun/muramasa-vn-translation/blob/master/assets/recordings/devil_route/rec2/translated_sentences.txt) \#75
        - [Recording 3](https://github.com/klesun/muramasa-vn-translation/blob/master/assets/recordings/devil_route/rec3/translated_sentences.txt) \#76-78
        - [Recording 4](https://github.com/klesun/muramasa-vn-translation/blob/master/assets/recordings/devil_route/rec4/translated_sentences.txt) \#79
        - [Recording 5](https://github.com/klesun/muramasa-vn-translation/blob/master/assets/recordings/devil_route/rec5/translated_sentences.txt) \#80
        - [Recording 6](https://github.com/klesun/muramasa-vn-translation/blob/master/assets/recordings/devil_route/rec6/translated_sentences.txt) \#81
        - [Recording 7](https://github.com/klesun/muramasa-vn-translation/blob/master/assets/recordings/devil_route/rec7/translated_sentences.txt) \#82
        - [Recording 8](https://github.com/klesun/muramasa-vn-translation/blob/master/assets/recordings/devil_route/rec8/translated_sentences.txt) \#83-85
- Hit the _Edit_ button (pencil icon)
    ![image](https://user-images.githubusercontent.com/5202330/111995352-8070f480-8b21-11eb-8797-344e417dd109.png)
- Edit the translation lines. If possible, try to focus on a random place in the file to avoid conflicting with other contributors.
- When you are done editing, in the bottom of the page hit the green "Propose changes" button.
    ![image](https://user-images.githubusercontent.com/5202330/111995092-3720a500-8b21-11eb-866f-65125711b4ac.png)
- You should end up on a page [like this](https://github.com/klesun/muramasa-vn-translation/pull/5). Confirm by clicking "Create pull request"
- Congrats! You made your first contribution!

I'll update subs on youtube from time to time when big enough bunch of corrections accumulates.

________________________________

I'll put here everything that I'll use during extraction and translation of this God-tier Visual Novel.

![image](https://user-images.githubusercontent.com/5202330/109388412-7f2c1d80-790f-11eb-9aa2-d69f47b86324.png)

As it appears, the [#8 VN in vndb](https://vndb.org/v2016) does not have much in terms of being translated to english.

The most serious movement on the moment of writing is the @Maa-chan2018's 24+ hours of [recorded gameplay](https://www.youtube.com/watch?v=AXSc9oNXSTk&list=PL3gfx-bBhOYKHY7QJcyxsnO4qeRgMwUmS) with translation added in form of hardsub. It seems to translate 4 Chapters of the Common Route. This is awesome, but still far from fully covering all the game.

As I'm coming closer to the end of chapter 4 T_T, I decided to get the actual game, capture the text of remaining chapters using [Textractor](https://github.com/Artikash/Textractor) and translate them all using [Google Translate](https://translate.google.jp/) API (relatively high quality auto-translation, but still inferior to a good human translator of course).

I'm also recording the video - if all plays well, I'll upload videos for all remaining chapters with captured and translated text attached as captions.

I'll push all extracted and translated text to this repo - feel free to make pull requests with corrections of the machine translation. I'll update subs on youtube from time to time from the accumulated corrected translations on github. I advise you to hit "Blame" to see which translations were already corrected by someone.


### My Plan
- ~~Get the game~~ Done: the [official site](http://www.fmd-muramasa.com/spec/) has a list of web stores where it can be bought using credit card, I [used dlsite.com](https://www.dlsite.com/pro/work/=/product_id/VJ010347.html). Installing this game from multipart rar archive and f*cking with locale issues deserve a separate article, but if I do everything right, you won't need that.
- ~~Make a plan of the routes.~~ [see here](https://klesun.github.io/muramasa-vn-translation/docs/saiga_guide_eng.html)
- Record each possible route with additionally logging the text and timestamps using Textractor
    - ~~Hero - 英雄編 - `mb`~~
    - ~~Revenge - 復讐編 - `mc`~~
    - ~~Demon - 魔王編 - `md01-md05`~~
    - ~~Evil Demon - エピローグ - `md06_001-md06_003` ~~
    - ~~True End - 悪鬼編 - `md06_004` ~~
    - Bad Endings
- ~~Cleanup and organize recorded videos and texts into a folder hierarchy according to the [routes guide](https://seiya-saiga.com/game/nitroplus/muramasa.html)~~
- ~~Generate youtube-format captions~~
- ~~Upload hentai scenes [to lbry](https://lbry.tv/@muramasa-vn-translation-nsfw:c?view=about)~~
    - ~~Kurusuno~~ - https://lbry.tv/@muramasa-vn-translation-nsfw:c/fmd_muramasa_11.5_nsfw_kurusuno:2
    - ~~Misao~~ - https://lbry.tv/@muramasa-vn-translation-nsfw:c/fmd_muramasa_32.5_nsfw_misao:6
    - ~~Bandits Boss~~ - https://lbry.tv/@muramasa-vn-translation-nsfw:c/fmd_muramasa_58.5_nsfw_bandits_boss:2
    - ~~Bald one from the Rokukahara~~ - https://lbry.tv/@muramasa-vn-translation-nsfw:c/fmd_muramasa_63_nsfw_bald_from_rokuhara:0
    - ~~Ayane~~ - https://lbry.tv/@muramasa-vn-translation-nsfw:c/fmd_muramasa_65_nsfw_ayane:e
    - ~~Ottori~~ - https://lbry.tv/@muramasa-vn-translation-nsfw:c/fmd_muramasa_72_nsfw_kanae:4
    - ~~Chachamaru~~ - https://lbry.tv/@muramasa-vn-translation-nsfw:c/fmd_muramasa_77_nsfw_chachamaru:c
    - ~~Muramasa~~ - https://lbry.tv/@muramasa-vn-translation-nsfw:c/game_recording_during_h_eng_hardsubbed:9
- Apply improvements described in the [issues](https://github.com/klesun/muramasa-vn-translation/issues)

__________________________

This will very likely come in handy (very detailed plot summary of each chapter)

### [Garejei Mirror](https://klesun.github.io/muramasa-vn-translation/docs/garejei_mirror/)

> I'm reposting the links someone posted here of Gare's summary of the whole game.

- Chapter 1 http://bit.ly/CH12zJJRKr
- Chapter 2 http://bit.ly/CH2JjVEyp
- Chapter 3 http://bit.ly/CH3Lclkyy
- Chapter 4 http://bit.ly/CH4NbiJWh


(it would be pretty cool to automatically replace generated translations with ones from the summary... may as well manually check the summary while reading and correct)

__________________________________

Along the way I'll possibly write a small web app that will continuously eat the logged output of Textractor and translate it with Google Translate on the fly. May as well consider doing that in form of an extension, if that won't be too complicated. But in a web app I could even correct while reading if I make such UI...
______________________

Manual from the game installation directory: [here](https://klesun.github.io/muramasa-vn-translation/docs/Manual/)

![easter egg](https://www.nitroplus.co.jp/secret/muramasamune/img/namanikuATK.jpg)
