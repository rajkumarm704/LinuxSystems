#!/bin/bash

#Sorting number

#Store input numbers in an array
sarr=($*)

#Assign two variables so that two consecutive numbers can be accessed from array
index_i=0
index_j=1

#Store the length of array in a variable
length=$#
let length1=$length-1

#Assign two variables so that all numbers can be compared and swapped
ii=0
i=0

echo array of number is ${sarr[@]}

while [ $i -lt $length ]
do
	while [ $ii -lt $length1 ]
	do
		#Exchange two numbers if the first number is greater then the second number
		if [ ${sarr[index_i]} -gt ${sarr[index_j]} ]
		then
			temp=${sarr[index_j]}
			sarr[index_j]=${sarr[index_i]}
			sarr[index_i]=$temp
		fi
		
		#Increment the index so that the nexr two consecutive numbers can be accessed
		let index_j=$index_j+1
		let index_i=$index_i+1
		let ii=$ii+1
	done

	#Initialise the variables to its initial condition so that all the other number can be compared
	index_i=0
	index_j=1
	ii=0
	let i=$i+1
done
echo sorted array is ${sarr[@]}
