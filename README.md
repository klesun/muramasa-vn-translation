# Soukou Akki Muramasa VN Translation
### 装甲悪鬼村正 | Full Metal Demon Muramasa

I'll put here everything that I'll use during extraction and translation of this God-tier Visual Novel.

![image](https://user-images.githubusercontent.com/5202330/109388412-7f2c1d80-790f-11eb-9aa2-d69f47b86324.png)

____________________

You can find shared links to uncut hentai scenes in the [/uncut_hentai_scenes/](https://github.com/klesun/muramasa-vn-translation/tree/master/uncut_hentai_scenes) folder
____________________

As it appears, the [#8 VN in vndb](https://vndb.org/v2016) does not have much in terms of being translated to english.

The most serious movement on the moment of writing is the @Maa-chan2018's 24+ hours of [recorded gameplay](https://www.youtube.com/watch?v=AXSc9oNXSTk&list=PL3gfx-bBhOYKHY7QJcyxsnO4qeRgMwUmS) with translation added in form of hardsub. It seems to translate 4 Chapters of the Common Route. This is awesome, but still far from fully covering all the game.

As I'm coming closer to the end of chapter 4 T_T, I decided to get the actual game, capture the text of remaining chapters using [Textractor](https://github.com/Artikash/Textractor) and translate them all using [Google Translate](https://translate.google.jp/) API (relatively high quality auto-translation, but still inferior to a good human translator of course).

I'm also recording the video - if all plays well, I'll upload videos for all remaining chapters with captured and translated text attached as captions.

I'll push all extracted and translated text to this repo - feel free to make pull requests with corrections of the machine translation. I'll update subs on youtube from time to time from the accumulated corrected translations on github. I advise you to hit "Blame" to see which translations were already corrected by someone.


### My Plan
- ~~Get the game~~ Done: the [official site](http://www.fmd-muramasa.com/spec/) has a list of web stores where it can be bought using credit card, I [used dlsite.com](https://www.dlsite.com/pro/work/=/product_id/VJ010347.html). Installing this game from multipart rar archive and f*cking with locale issues deserve a separate article, but if I do everything right, you won't need that.
- ~~Make a plan of the routes.~~ [see here](https://klesun.github.io/muramasa-vn-translation/docs/saiga_guide_eng.html)
- Record each possible route with additionally logging the text and timestamps using Textractor
    - ~~Hero~~
    - ~~Revenge~~
    - ~~Demon~~
    - ~~Evil Demon~~
    - ~~True End~~
    - Bad Endings
- ~~Cleanup and organize recorded videos and texts into a folder hierarchy according to the [routes guide](https://seiya-saiga.com/game/nitroplus/muramasa.html)~~
- Generate youtube-format captions
- Upload hentai scenes [to lbry](https://odysee.com/@muramasa-vn-translation-nsfw:c)
    - ~~Kurusuno~~
    - Misao
    - Bandits Boss
    - Bald one from the Rokukahara
    - Ayane
    - Ottori
    - Chachamaru
    - Muramasa

__________________________

This will very likely come in handy (very detailed plot summary of each chapter)

### [Garejei Mirror](https://klesun.github.io/muramasa-vn-translation/docs/garejei_mirror/)

> I'm reposting the links someone posted here of Gare's summary of the whole game.

- Chapter 1 http://bit.ly/CH12zJJRKr
- Chapter 2 http://bit.ly/CH2JjVEyp
- Chapter 3 http://bit.ly/CH3Lclkyy
- Chapter 4 http://bit.ly/CH4NbiJWh
- Chapter 5  http://bit.ly/2zzoWJX
- Hero Route - Ichijou http://bit.ly/HEROugbLbo
- Revenge Route - Kanae http://bit.ly/REVENGEmfmNtq
- Tyrant Route - Muramasa (Part 1)  http://bit.ly/TYRANT1L5hTgu
- Tyrant 2  http://bit.ly/TYRANT2mdaEoE
- Tyrant 3  http://bit.ly/TYRANT3KPf0kF
- Tyrant 4  http://bit.ly/TYRANT4mjtkmV
- Tyrant 5  http://bit.ly/TYRANT5L3raFM
- Tyrant 6 + Ending "Chachamaru" http://bit.ly/TYRANT6LgVEkn
- Tyrant 7 http://bit.ly/TYRANT7L8oVRq
- Tyrant Finale http://bit.ly/TYRANT8FINALE
- Epilogue http://bit.ly/MURAMASAEPILOGUE


(it would be pretty cool to automatically replace generated translations with ones from the summary... may as well manually check the summary while reading and correct)

__________________________________

Along the way I'll possibly write a small web app that will continuously eat the logged output of Textractor and translate it with Google Translate on the fly. May as well consider doing that in form of an extension, if that won't be too complicated. But in a web app I could even correct while reading if I make such UI...
