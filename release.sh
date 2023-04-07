#!/usr/bin/env bash

# docker credentials
USERNAME=charckle
BANANA=banana
IMAGE=yt-dlp

echo "pulling latest image from git"
git pull

# bump version
OLD_VERSION=$(cat VERSION)
echo "Bumping version from $OLD_VERSION"
docker run --rm -v "$PWD":/app treeder/bump patch
version=$(cat VERSION)
echo "version: $version"

# now run build
. build.sh

# now make tags and push it to git
echo "Adding tags to git and pushing"
git add .
git commit -m "version $version"
git push
git push --tags
