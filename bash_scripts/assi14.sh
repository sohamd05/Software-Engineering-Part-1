#!/bin/bash

read -p "Enter a number: " num

if [ $num -lt 0 ]; then
    echo "Factorial is not defined for negative numbers."
elif [ $num -eq 0 ]; then
    echo "Factorial of 0 is 1."
else
    factorial=1
    for ((i = 1; i <= num; i++)); do
        factorial=$((factorial * i))
    done
    echo "Factorial of $num is $factorial"
fi
