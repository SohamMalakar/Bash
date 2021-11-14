#!/bin/bash

arr=(1 2 3 4 5 6 7 8 9)

sum=0

for i in ${arr[*]}; do
    let sum+=i
done

echo $sum
