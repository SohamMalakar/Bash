#!/bin/bash

num=1

while [ $num -le 10 ]; do
	echo $num
	num=$((num + 1))
done

num=1

while [ $num -le 20 ]; do
	if (( num%2 == 0 )); then
		num=$((num+1))
		#let num+=1
		#_=$(( num++ ))
		continue
	fi

	if (( num >= 15 )); then
		break;
	fi

	echo $num
	num=$((num + 1))
done

num=1

until [ $num -gt 10 ]; do
	echo $num
	num=$((num+1))
done

for (( i=0; i <= 10; i=i+1 )); do
	echo $i
done

for i in {A..Z}; do
	echo $i
done

while read first_name last_name; do
	printf "First Name: $first_name,\tLast Name: $last_name\n"
done < data.csv


