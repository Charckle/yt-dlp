# docker hub username

# get the latest yt-dlp version
yt_version=$(pip index versions yt-dlp | grep yt-dlp | cut -d "(" -f2 | cut -d ")" -f1)

docker build --build-arg yt_version=$yt_version -t $USERNAME/$IMAGE:$version .
#docker image tag $USERNAME/$IMAGE:$version $USERNAME/$IMAGE:latest
# push it to docker
#docker push $USERNAME/$IMAGE:latest
#docker push $USERNAME/$IMAGE:$version
