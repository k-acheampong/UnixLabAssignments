#!/bin/bash

#Author: Kwame Acheampong
#Description: Promts for a number and if the number is greater than 10 and odd, user wins the game
#Date: 02.12.2020

echo -n "Enter a number greater than 10: "
read NUM

if [[ $NUM -gt 10 ]]
then	
	ISEVEN=$(( $NUM % 2 ))
	if [[ $ISEVEN -ne -0 ]]
	then
		echo "You win!"
	else
		echo "You fail! You entered an even number"
	fi
else
	echo "This is invalid. You need a number greater than 10"
fi

