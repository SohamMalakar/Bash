#!/bin/bash

read -p "Enter a string: " str

str=$(echo $str | tr '[:lower:]' '[:upper:]')

echo $str