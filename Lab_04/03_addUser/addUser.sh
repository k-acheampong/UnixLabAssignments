#!/bin/bash/

#Author: Kwame Acheampong
#Description: Takes a potential user as an arguement and checks if the user exists. Creates a log file, if otherwise
#Date: 02.12.2021

AddUser()
{
	read -p "Create a username: " $USERNAME
	if [ grep -q "^$USERNAME" /etc/passwd ]
	then
        	echo $USERNAME is already a User
        	echo $USERNAME is already a User > users.log
	else
        	useradd -m "$USERNAME"
        	echo Added $USERNAME as a User.
	fi
}

AddUser
