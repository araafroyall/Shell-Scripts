#!/bin/sh
# Path to the file containing directories
input_file="/storage/emulated/0/B/file.sh"

# Loop through each line (directory) in the file and delete it
while IFS= read -r dir; do
  rm -rf "$dir"
  echo "Deleted: $dir"
done < "$input_file"