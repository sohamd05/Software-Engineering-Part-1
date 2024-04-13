#!/bin/bash

year=2000
count=0

while [ $count -lt 10 ]; do
    if [ $((year % 4)) -eq 0 ] && [ $((year % 100)) -ne 0 ] || [ $((year % 400)) -eq 0 ]; then
        echo "$year is a leap year"
        ((count++))
    fi
    ((year++))
done
