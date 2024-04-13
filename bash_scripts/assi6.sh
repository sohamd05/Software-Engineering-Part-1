#!/bin/bash

read -p "Enter operand 1: " operand1
read -p "Enter operator (+, -, *, /): " operator
read -p "Enter operand 2: " operand2

case $operator in
    +)
        result=$((operand1 + operand2))
        ;;
    -)
        result=$((operand1 - operand2))
        ;;
    *)
        result=$((operand1 * operand2))
        ;;
    /)
        result=$((operand1 / operand2))
        ;;
esac

echo "Result: $result"
