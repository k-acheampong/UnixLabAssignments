#!/bin/bash

#Author: Kwame Acheampong
#Description: Iterates over a for loop to print the mount point and file system of each drive a certain number of times

IFS=$'\n'

mounted=`mount | awk '{print "Drive: " $1 ", Filetype: " $5 ", Mounted on: " $3}'`

for line in $mounted;
do
        echo "$line"
done

