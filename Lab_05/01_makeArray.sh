#!/bin/bash

#Name: Kwame Acheampong
#Description: User creates an array by entering 10 strings
#Date: 02.12.2021

echo "Enter 10 values: "
read -a array

for value in ${array[@]}
do
        echo $value
done

