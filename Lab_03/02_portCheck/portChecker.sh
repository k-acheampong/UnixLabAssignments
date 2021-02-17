#!/bin/bash

#Author: Kwame Acheampong
#Description: Script does an open port check on all hosts in a text file
#Date: 02.12.2021

for address in $(cat ipAddresses.txt)
do
	nmap -Pn $address 
done
