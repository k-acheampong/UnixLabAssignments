#!/bin/bash

#Arthor: Kwame Acheampong
#Description: Script monitors disk space utilization and generates a log file when usage goes beyond 10%
#Date: 02.12.2021

diskUsage()
{
	DISKUSAGE=$( df -h | awk '{print $5}' | sort -n | tail -n 1 | sed 's/%//' )
	TRESHOLD=10
	DATE=`date '+%d%b%Y@%H:%M:%S'`

	echo "Monitoring disk space utilization..."
	if [[ $DISKUSAGE -gt $ALERT ]]
	then
		echo "Disk usage percentage: " $DISKUSAGE "%"
		df -h | awk '$5 -ge 10 {print}' > report_$DATE.log
		echo "Logfile created."
	else
		echo "Disk usage is less than 10%"
	fi
}

diskUsage
