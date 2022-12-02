#!/bin/bash

# This script downloads a YouTube video.

# Check if the user has youtube-dl installed
if ! [ -x "$(command -v youtube-dl)" ]; then
  echo 'Error: youtube-dl is not installed.' >&2
  exit 1
fi

# Ask the user for the video URL
echo "Please enter the URL of the YouTube video you would like to download: "
read video_url

# Download the video
youtube-dl $video_url
