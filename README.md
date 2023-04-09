#### What
- Uses yt-dlp (install with pip)
- And ffmpeg (apt install)
- you can run it locally, but I suggest docker
- Downloads mp3, but if an additional argument is added to the script, downloads the best video+audio+subtitles
    - `./ytmp3.sh "https://URL"` # audio
    - `./ytmp3.sh "https://URL" v` # video

#### Docker
Run release.sh. It will download the latest verion from git, bump up the verion of the image, check for the latest version of yt-dlp, create a new docke image and git commit with the version number
