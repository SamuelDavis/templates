#!/usr/bin/bash

if [ "$#" -ne 2 ]; then
  echo "Incorrect number of arguments."
  exit 1
fi

BRANCH="$1"
URL="https://github.com/SamuelDavis/templates/archive/refs/heads/$BRANCH.zip"
TEMP_FILE="/tmp/templates-$BRANCH.zip"
OUTPUT=$(readlink --canonicalize "$2")
CONTAINING_DIR="$OUTPUT/templates-$BRANCH"

echo "URL: \"$URL\", TEMP_FILE: \"$TEMP_FILE\", OUTPUT: \"$OUTPUT\""

if ! [ -f "$TEMP_FILE" ]; then
  curl --location "$URL" --output "$TEMP_FILE"
else
  printf "%s already exists\n" "$TEMP_FILE"
fi

if ! [ -d "$OUTPUT" ]; then
  unzip "$TEMP_FILE" -d "$OUTPUT"
else
  printf "%s already exists\n" "$OUTPUT"
fi

mv "$CONTAINING_DIR"/* "$CONTAINING_DIR"/.* "$OUTPUT"
rm -rf "$CONTAINING_DIR"
