ffmpeg  \
  -i game_recording.mp4 \
  -map 0:v -map 0:a \
  -preset veryfast \
  -sws_flags lanczos \
  -vf "scale=1280:-1" \
  -c:a copy \
  outfile_720_lanczos_full.mp4
