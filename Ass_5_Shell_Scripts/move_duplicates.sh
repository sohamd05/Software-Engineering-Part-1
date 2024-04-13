#!/bin/bash

if [ "$#" -ne 2 ]; then
  echo "Usage: $0 source_directory target_directory"
  exit 1
fi

source_dir="$1"
target_dir="$2"

# Create an associative array to store file hashes
declare -A file_hashes

# Iterate through files in the source directory
for file in "$source_dir"/*; do
    # Calculate the MD5 hash of the file
    file_hash=$(md5sum "$file" | awk '{print $1}')

    # Check if the hash already exists in the array
    if [[ -n ${file_hashes[$file_hash]} ]]; then
        # Duplicate file found, move it to the target directory
        mv "$file" "$target_dir/"
        echo "Moved duplicate file: $file"
    else
        # Store the hash in the array
        file_hashes[$file_hash]=1
    fi
done
echo "Duplicate files have been moved to $target_dir"
for file in "$source_dir"/*; do
    read -p "Do you want to display contents of $file? [Y/N]: " displayContents
    if [[ $displayContents == "Y" || $displayContents == "y" ]]; then
        more $file
    fi
done