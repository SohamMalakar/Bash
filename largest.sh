#!/bin/bash

arr=(9 5 18 24 -5 11 2 0 4)

max=${arr[0]}

for i in ${arr[*]}; do
    if (( max<i )); then
        max=$i
    fi
done

echo $max
