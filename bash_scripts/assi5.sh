#!/bin/bash

read -p "Enter marks for the subject: " marks

if [ $marks -ge 75 ]; then
    echo "I-Division"
elif [ $marks -ge 60 ]; then
    echo "II-Division"
elif [ $marks -ge 45 ]; then
    echo "III-Division"
else
    echo "Fail"
fi
