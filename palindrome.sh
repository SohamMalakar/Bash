#!/bin/bash

read -p "Enter a number to check if the value is palindrome or not: " num

sav=$num
rev=0

while (( num != 0 )); do

    r=$((num%10))
    let num/=10
    let rev*=10
    let rev+=r

done

if [ $rev -eq $sav ]; then
    echo "It's palindrome"
else
    echo "It's not palindrome"
fi
