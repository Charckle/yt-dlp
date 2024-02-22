FROM python:3.11-alpine

ARG yt_version

RUN mkdir -p /m_files

RUN apk add --no-cache \
    ffmpeg
RUN pip install yt-dlp==$yt_version

