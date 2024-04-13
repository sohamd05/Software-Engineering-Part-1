#!/bin/bash

read -p "Enter the name of the file: " file_name

if [ -e "$file_name" ]; then
    while IFS= read -r line; do
        echo "$line"
    done < "$file_name"
else
    echo "File '$file_name' does not exist."
fi
