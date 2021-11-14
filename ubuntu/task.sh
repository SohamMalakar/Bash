#!/bin/bash

# Extract and display the filenames and their size

n=$(( $( ls -l | wc -l ) - 1 ))

list=$( ls -l | tail -n $n )

digit_sum()
{
	local n=$1
	local ds=$(( n%9 ))

	if (( ds == 0 && n != 0 )); then
		ds=9
	fi

	echo $ds

	return
}

i=0
j=1

for data in $list; do

	r=$( digit_sum $i )

	if (( r==4 )); then
		printf "%d. size: %s bytes\t" $j $data
	elif (( r==8 )); then
		echo "name: $data"
		let j++
	fi

	let i++

done
