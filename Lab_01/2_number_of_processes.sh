#!/bin/bash/

#Author: Kwame Acheampong
#Description: A script to count the number of processes running
#Date: 02.11.2021

echo "NUMBER OF PROCESSES: "
ps -e | wc -l
