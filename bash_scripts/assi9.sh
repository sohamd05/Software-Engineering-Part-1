#!/bin/bash

file="example.txt"

if [ -e "$file" ]; then
    echo "hello world" > "$file"
else
    touch "$file"
    echo "hello world" > "$file"
fi
