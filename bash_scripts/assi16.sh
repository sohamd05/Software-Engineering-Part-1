#!/bin/bash

read -p "Enter the number of rows for the pyramid: " rows
read -p "Enter 'N' to print numbers or 'S' to print special characters: " choice

if [ "$choice" == "N" ] || [ "$choice" == "n" ]; then
    for ((i = 1; i <= rows; i++)); do
        for ((j = 1; j <= rows - i; j++)); do
            echo -n " "
        done
        for ((k = 1; k <= 2 * i - 1; k++)); do
            echo -n "$k"
        done
        echo
    done
elif [ "$choice" == "S" ] || [ "$choice" == "s" ]; then
    for ((i = 1; i <= rows; i++)); do
        for ((j = 1; j <= rows - i; j++)); do
            echo -n " "
        done
        for ((k = 1; k <= 2 * i - 1; k++)); do
            echo -n "*"
        done
        echo
    done
else
    echo "Invalid choice. Please enter 'N' for numbers or 'S' for special characters."
fi
