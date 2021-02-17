#!/bin/bash

#Name: Kwame Acheampong
#Description: An arithmetic calculator for any 2 numbers
#Date: 02.12.2021

echo "Enter your choice: "
echo "1. Addition"
echo "2. Subtraction"
echo "3. Multiplication"
echo "4. Division"
echo "5. Modulus"
echo "Enter your option as number (1-5): "

read CHOICE

echo -n "Enter your first number: "
read x
echo -n "Enter your second number: "
read y

addition()
{
add=$(( x + y ))
echo "Addition: $add"
}

subtraction()
{
sub=$(( x - y ))
echo "Subtraction: $sub"
}

multiplication()
{
mult=$(( x * y ))
echo "Multiplication: $mult"
}

division()
{
div=$(( x / y ))
echo "Division: $div"
}

modulus()
{
mod=$(( x % y ))
echo "Modulus: $mod"
}

case $CHOICE in
	1)
	addition;;
	2)
	subtraction;;
	3)
	multiplication;;
	4)
	division;;
	5)
	modulus;;
	*)
	echo "Invalid choice"
esac	

