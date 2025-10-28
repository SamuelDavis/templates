#!/bin/bash

if [ "$#" -ne 2 ]; then
  echo "Incorrect number of arguments."
  exit 1
fi

BRANCH="$1"
URL="https://github.com/SamuelDavis/templates/archive/refs/heads/$BRANCH.zip"
TEMP_FILE="/tmp/templates-$BRANCH.zip"
OUTPUT="$PWD/$2"

if [ -d "$OUTPUT" ]; then
  printf "%s already exists\n" "$OUTPUT"
  exit 1
fi

if [ ! -f "$TEMP_FILE" ]; then
  curl --location "$URL" --output "$TEMP_FILE"
fi

unzip "$TEMP_FILE" -d "/tmp/"
mv "/tmp/templates-$BRANCH" "$OUTPUT"

cd "$OUTPUT"
git init
git add .
git commit -m "initialize with $BRANCH"
cd -
