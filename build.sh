# docker hub username
USERNAME=charckle
IMAGE=yt-dlp
docker build -t $USERNAME/$IMAGE:$version .
docker image tag $USERNAME/$IMAGE:$version $USERNAME/$IMAGE:latest
