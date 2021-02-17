#!/bin/bash

#Author: Kwame Acheampong
#Description: Prints an array matrix for a given size
#Date: 02.12.2021

echo "Please enter the width of your matrix: "
read width
echo "Please enter the height of your matrix: "
read height


matrix=()
for l in seq $(seq $(( height -1 )))
do
	for w in $(seq $width)
	do
		matrix+=("'*'")
	done
	echo ${matrix[*]}
	unset matrix[*]
done

