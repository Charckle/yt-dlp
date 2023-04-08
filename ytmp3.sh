#!/bin/sh

docker run --rm -v $(pwd)/m_files:/m_files charckle/yt-dlp:latest yt-dlp -x --audio-format "mp3" --restrict-filenames --yes-playlist -o "m_files/%(title)s.%(ext)s" "$1"
