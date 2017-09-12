#!/bin/bash

echo enter the number
read arr

length=${#arr}
let actual_length=$length-1
actual_length1=$actual_length
echo $actual_length1
operator=${arr[0]:actual_length}
echo $operator

sum=0
i=0
if [ $operator == "+" ]
then
echo inside loop

	while [ $i -lt $actual_length1 ] 
	do
		
		echo inside while
		
	#	echo $i 
		if [ $i -lt $actual_length1 ]
		then
			let sum=$sum+${arr[0]:i:1}
			echo ${arr[0]:i:1}
		fi
		let i=$i+1
	done

echo $sum
fi


