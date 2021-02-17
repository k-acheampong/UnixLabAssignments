#!/bin/bash

#Author: Kwame Acheampong
#Description: A script to create a .log file that contains the system's hostname, IP address, free memory usage, and number of CPU cores
#Date: 02.11.2021

#Create a date variable for the log files
DATE=`date '+%d%b%Y@%H:%M:%S'`

#Create the log file
touch report_$DATE.log

#Contain all commands in a command group ( { } ) to send their outputs to the .log file
{ echo "HOSTNAME & IP-ADDRESS: " ;hostname ;echo "FREE MEMORY USAGE: " ;free -m ;echo "NUMBER OF CPU CORES: " ;grep 'cpu cores' /proc/cpuinfo | uniq ;} > report_$DATE.log

#Print report information
cat report_$DATE.log
