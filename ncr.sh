#!/bin/bash

read -p "Enter n and r to calculate nCr: " n r

nCr()
{
    local n=$1
    local r=$2
    local ncr=1

    while (( $r>0 )); do
        tmp=$( echo $n/$r | bc -l )
        ncr=$( echo $ncr*$tmp | bc -l )

        let n--
        let r--
    done

    echo $ncr

    return
}

ncr=$(nCr $n $r)

echo $ncr