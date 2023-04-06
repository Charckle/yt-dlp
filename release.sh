#!/usr/bin/env bash

# docker credentials
USERNAME=charckle
IMAGE=yt-dlp

git pull

# bump version
docker run --rm -v "$PWD":/app treeder/bump patch
version=`cat VERSION`
echo "version: $version"

# now run build
./build.sh

# now make tags and push it to git

git add .
git commit -m "version $version"
git push
git push --tags
