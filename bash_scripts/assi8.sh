#!/bin/bash

while true; do
    read -p "Enter student name (or 'quit' to exit): " student_name

    # Exit the loop if the user enters 'quit'
    if [ "$student_name" == "quit" ]; then
        break
    fi

    read -p "Enter marks for $student_name: " marks

    if [ $marks -ge 0 ] && [ $marks -le 44 ]; then
        echo "$student_name: Fail"
    elif [ $marks -ge 45 ] && [ $marks -le 59 ]; then
        echo "$student_name: III-Division"
    elif [ $marks -ge 60 ] && [ $marks -le 74 ]; then
        echo "$student_name: II-Division"
    elif [ $marks -ge 75 ] && [ $marks -le 100 ]; then
        echo "$student_name: I-Division"
    else
        echo "$student_name: Invalid marks!"
    fi
done
