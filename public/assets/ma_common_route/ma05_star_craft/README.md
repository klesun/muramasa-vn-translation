Youtube: #50-58, #59 (h-scene), #60-61

| yt      | start      | end      | description                                  | link
| ----    | ---        | ---      | -------------------------------------------- | -----
| \#50-58 | 00:00:00   |          |                                              | https://www.youtube.com/watch?v=AtdlsN15gPs&list=PLlRk_Elz9MdaZRPMCMZyAXNt3bGAQMBJZ
| \#63    | 04:08:50.00|          | Boss-Lady h-scene                            | https://lbry.tv/@muramasa-vn-translation-nsfw:c/fmd_muramasa_58.5_nsfw_bandits_boss:2
| \#64    | 04:17:52.50|          | Chapter 5 ending (as well as Common route's) | https://www.youtube.com/watch?v=882IUW3_9Tw&list=PLlRk_Elz9MdaZRPMCMZyAXNt3bGAQMBJZ

```bash
# -ss needs to be repeated before each input for correct timing
# see also https://superuser.com/a/704118/341432
ffmpeg  \
  -ss 00:20:45 -i game_recording.mp4 \
  -ss 00:20:45 -i game_recording.eng.srt \
  -ss 00:20:45 -i game_recording.jpn.srt \
  -s 1280x720 \ 
  -map 0:v -map 0:a -map 1 -map 2 \
  -c:v copy -c:a copy \
  -c:s srt \
    -metadata:s:s:0 language=eng \
    -metadata:s:s:1 language=jpn \
  outfile.mkv
```
