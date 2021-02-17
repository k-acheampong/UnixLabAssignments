#!/bin/bash/

#Author: Kwame Acheampong
#Description: Takes a filename as an arguement and prints the description of the file
#Date: 02.12.2021

echo "Reading file name in arguement"

#$1 is the first arguement the user provides
if [[ -f $1 ]]
then
	ls -l $1
fi
