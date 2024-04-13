#!/bin/bash

read -p "Enter cost price: " cost_price
read -p "Enter selling price: " selling_price

if [ $cost_price -lt $selling_price ]; then
    profit=$((selling_price - cost_price))
    echo "Profit: $profit"
elif [ $cost_price -gt $selling_price ]; then
    loss=$((cost_price - selling_price))
    echo "Loss: $loss"
else
    echo "No Profit, No Loss"
fi
