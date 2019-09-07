#!/bin/bash

# this script extracts the audio from the mp4 file
# and converts it to mono

INPUT_FILE=$1
BASE_DIR=$(dirname $INPUT_FILE) 
BASE_NAME=$(basename -s .aaa $INPUT_FILE)
#TMP_FILE=$(mkttemp --suffix=.bbb)
OUT_FILE="$BASE_DIR/$BASE_NAME.bbb"

echo $BASE_NAME
echo $BASE_DIR
echo $OUT_FILE 
