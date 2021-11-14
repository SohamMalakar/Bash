#!/bin/bash

read -p "Enter an alphabet to check if the alphabet is vowel or consonant: " c

if [[ $c == "a" || $c == "e" || $c == "i" || $c == "o" || $c == 'u' || $c == 'A' || $c == 'E' || $c == 'I' || $c == 'O' || $c == 'U' ]]; then
    echo "It's a vowel"
else
    echo "It's a consonant"
fi
