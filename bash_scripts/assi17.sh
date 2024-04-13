#!/bin/bash

file="example.txt"

# Write content to the file
echo "Cat" > "$file"
echo "dog" >> "$file"
echo "bear" >> "$file"
echo "hello" >> "$file"
echo "elephant" >> "$file"
echo "hello" >> "$file"
echo "tiger" >> "$file"
echo "hello" >> "$file"
echo "horse" >> "$file"

# Display all the names before modifying
echo "Original file contents:"
cat "$file"

# Delete lines containing "hello" and display the modified content
echo "Modified file contents:"
grep -v "hello" "$file"
-