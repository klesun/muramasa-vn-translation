The `/public/assets/` directory holds everything related to subtitles for recorded videos: jpn srt files created using
textractor, google translations, garejei translations, timings, etc...

The `/assets/nss_game_scripts/` holds the [NWScript](https://neverwintervault.org/project/nwnee/other/tool/nwnsc-nwn-enhanced-edition-script-compiler)
files extracted from the game, provided [by a good man](https://github.com/klesun/muramasa-vn-translation/pull/5#issuecomment-812409738). The script is used in some popular games, so there possibly is some AST parser that would allow to extract/replace 
the texts (which mostly reside in files starting from [ma00_000.nss](https://github.com/klesun/muramasa-vn-translation/blob/master/assets/nss_game_scripts/ma00_000.nss))
