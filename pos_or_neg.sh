#!/bin/bash

read -p "Enter a number to check if the value is positive or negative: " num

if (( num < 0 )); then
    echo "It's negative"
else
    echo "It's positive"
fi
