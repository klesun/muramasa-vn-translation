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
