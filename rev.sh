#!/bin/bash

if [ $# -ne 1 ]; then
    echo "Usage: ./test.sh arg"
    exit 1
fi

str=$1
len=${#str}
rev=""

until test "$len" -eq 0; do
    r=$( echo "$str" | cut -c "$len" )
    len=$(( len - 1 ))
    rev=$rev$r
done

echo "$rev"