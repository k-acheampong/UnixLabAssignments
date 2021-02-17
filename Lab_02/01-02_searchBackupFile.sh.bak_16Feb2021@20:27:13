#!/bin/bash/

#Author: Kwame Acheampong
#Description: Script checks if a given filename exists and backs up the the file if it does
#Date: 02.12.2021

#Date variable for back up file
DATE=`date '+%d%b%Y@%H:%M:%S'`

echo "Provide a filepath: "
read FILEPATH

if [[ -f $FILEPATH ]]
then
	echo "$FILEPATH exists"
	echo "Copying and backing up file"
	echo "..........................."
	cp $FILEPATH $FILEPATH.bak_$DATE
	echo "Copy and backup successful"
else
	echo "The file does not exist"
	exit 1
fi



