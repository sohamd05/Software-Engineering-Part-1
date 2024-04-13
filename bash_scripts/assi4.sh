#!/bin/bash

read -p "Enter the radius of the circle: " radius

pi=3.14159
area=$(echo "scale=2; $pi * $radius * $radius" | bc)
circumference=$(echo "scale=2; 2 * $pi * $radius" | bc)

echo "Area of the circle: $area"
echo "Circumference of the circle: $circumference"
