#!/bin/bash

read -p "Enter the first number: " num1
read -p "Enter the second number: " num2
read -p "Enter the third number: " num3

if [ $num1 -ge $num2 ] && [ $num1 -ge $num3 ]; then
    echo "The largest number is $num1."
elif [ $num2 -ge $num1 ] && [ $num2 -ge $num3 ]; then
    echo "The largest number is $num2."
else
    echo "The largest number is $num3."
fi
