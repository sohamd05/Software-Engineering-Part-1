#!/bin/bash

read -p "Enter a string: " input_string

reverse_string=$(echo "$input_string" | rev)

if [ "$input_string" == "$reverse_string" ]; then
    echo "$input_string is a palindrome."
else
    echo "$input_string is not a palindrome."
fi
