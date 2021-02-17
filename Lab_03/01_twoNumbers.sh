#!/bin/bash

#Author: Kwame Acheampong
#Description: Takes 2 values, prints all values if either is less than 10; otherwise it takes the sum of the values and prints the result
#Date: 02.12.2021

echo "Enter your first number: "
read x
echo "Enter your second number: "
read y
SUM=$(( x + y ))

values=( $x $y )

if [[ $x -lt 10 || $y -lt 10 ]]
then
	echo "Your values: "
	for i in "${values[@]}"
	do
		echo $i
	done
else
	echo "The sum of the values you provided is: $SUM"
fi	
