#!/bin/bash
# merge_dict.sh

# Temporary files to hold the unique words from both versions
TEMP1=$(mktemp)
TEMP2=$(mktemp)

# Extract unique words from each version
sort -u "$1" > "$TEMP1"
sort -u "$2" > "$TEMP2"

# Combine and sort the unique words
sort -u "$TEMP1" "$TEMP2" > "$1"

# Clean up temporary files
rm "$TEMP1" "$TEMP2"
