#!/bin/bash/

#Author: Kwame Acheampong
#Description: Sorts an array of 3 numbers
#Date: 02.12.2021

arr=(10 8 20) 
  
echo "Array in original order"
echo ${arr[*]} 
  
# Performing Bubble sort  
for ((i = 0; i<3; i++)) 
do
      
    for((j = 0; j<3-i-1; j++)) 
    do
      
        if [ ${arr[j]} -gt ${arr[$((j+1))]} ] 
        then
            # swap 
            temp=${arr[j]} 
            arr[$j]=${arr[$((j+1))]}   
            arr[$((j+1))]=$temp 
        fi
    done
done
  
echo "Array in sorted order :"
echo ${arr[*]} 
