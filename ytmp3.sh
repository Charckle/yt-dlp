#!/bin/sh

docker_command="docker run --rm -v $(pwd)/m_files:/m_files charckle/yt-dlp:latest"

if [ -z "$2" ]
  then
    echo "Running mp3 download"
    $docker_command -x --audio-format "mp3" --restrict-filenames --yes-playlist -o "m_files/%(title)s.%(ext)s" "$1"
  else
    $docker_command -f "bestvideo[ext=mp4]+bestaudio[ext=m4a]/best" --write-subs --write-auto-sub --sub-lang "en.vtt" --restrict-filenames --yes-playlist -o "m_files/%(title)s.%(ext)s" "$1"
fi

