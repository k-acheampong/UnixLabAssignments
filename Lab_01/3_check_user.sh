#!/bin/bash/

#Author: Kwame Acheampong
#Description: Takes an input to see if a user exists in /etc/passwd/

echo "Provide a user: "
read username

if [[ `sed -n "/^$username/p" /etc/passwd` ]]
then
	echo "User [$username] exists"
else
	echo "NO USER FOUND"
fi
