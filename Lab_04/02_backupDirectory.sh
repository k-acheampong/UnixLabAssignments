#!/bin/bash

#Author: Kwame Acheampong
#Description: Takes a directory as an argument and makes a backup
#Date: 02.12.2021

backupDirectory()
{
	DATE=`date '+%d%b%Y@%H:%M:%S'`

	if [[ -d $1 ]]
	then
        	sudo tar -cvf ~/$1_"$DATE".tar $1
	else
        	echo Invalid Directory
	fi
	
}

backupDirectory

