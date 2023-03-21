FROM python:3.11-alpine

RUN mkdir -p /m_files

RUN apk add --no-cache \
    ffmpeg
RUN pip install yt-dlp==2023.3.4


