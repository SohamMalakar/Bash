#!/bin/bash

read -p "Enter a number to calculate factorial: " n

i=1
fact=1

while [ $i -le $n ]; do
	fact=$(( i*fact ))
	let i++
done

echo $fact
