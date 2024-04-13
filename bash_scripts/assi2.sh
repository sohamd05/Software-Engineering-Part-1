#!/bin/bash

read -p "Enter an integer: " num

if [ $num -le 1 ]; then
    echo "$num is not prime."
else
    is_prime=true
    for ((i=2; i*i<=num; i++)); do
        if [ $((num % i)) -eq 0 ]; then
            is_prime=false
            break
        fi
    done
    if $is_prime; then
        echo "$num is prime."
    else
        echo "$num is not prime."
    fi
fi
