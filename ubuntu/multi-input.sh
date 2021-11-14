#!/bin/bash

read -p "Enter 2 Numbers to Sum: " num1 num2

sum=$((num1+num2))

echo "$num1 + $num2 = $sum"

read -sp "Enter the secret code " secret

if [ "$secret" == "password" ]; then
	printf "\nEnter\n"
else
	printf "\nWrong Password\n"
fi

