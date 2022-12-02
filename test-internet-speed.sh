#!/bin/bash

# This script will measure internet speed by downloading a file from the internet

# Define the file to be downloaded
FILE_URL="http://speedtest.wdc01.softlayer.com/downloads/test500.zip"

# Define the starting time
START_TIME="$(date +%s)"

# Download the file
wget $FILE_URL

# Define the ending time
END_TIME="$(date +%s)"

# Calculate the total time taken to download the file
ELAPSED_TIME="$(expr $END_TIME - $START_TIME)"

# Calculate the download speed
DOWNLOAD_SPEED="$(expr 500 / $ELAPSED_TIME)"

# Print the results
echo "It took $ELAPSED_TIME seconds to download the file."
echo "The download speed was $DOWNLOAD_SPEED MB/s."
