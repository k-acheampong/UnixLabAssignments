#!/bin/bash

num=5

while [ $num -le 100 ]
do
        echo $num
        num=$(($num + 5))
done

