#!/bin/bash/

#Author: Kwame Acheampong

nc -zv 172.31.54.51 22

if [ "$?" -eq 0 ]
then
	echo "Port 22 is open"
	echo -n "This is the internal IP addresss: "
	ifconfig | grep inet awk '{print $2}'
else
	echo "Port 22 is closed"
fi
