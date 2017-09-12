#! /bin/bash

#Fibonacci Series

#Prompt user to enter a number
echo enter a number
read n

#Make a copy of number
a=$n

#Initialise loop count and other variables
i=0

#Fibonacci Number
fnum=1

#Temporary sum variable
sum=0

#Teporary variable
temp=0

while [ $i -le $a ]
do
 	temp=$sum
	let sum=$fnum+$sum
	fnum=$temp
	if [ $fnum -gt $n ]
	then
		break
	fi
	echo $fnum
done
	
