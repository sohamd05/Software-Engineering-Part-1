#!/bin/bash

read -p "Enter an integer: " num

if [ $((num % 2)) -eq 0 ]; then
    echo "$num is even."
else
    echo "$num is odd."
fi
