#!/bin/bash

# Get input from the user for the directory path
read -p "Enter the directory path: " directory

# Get input from the user for the number of files to display
read -p "Enter the number of files to display: " file_count

# Get input from the user for the number of days
read -p "Enter the number of days for file creation: " days

# Find and display the specified number of largest files created in the last specified number of days
find "$directory" -type f -ctime "-$days" -exec ls -lh {} \; | sort -k5 -hr | head -n "$file_count"
