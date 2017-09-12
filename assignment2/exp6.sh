#!/bin/bash

echo enter the number
read arr

length=${#arr}
let actual_length=$length-1
actual_length1=$actual_length
actual_length2=$actual_length
actual_length3=$actual_length
actual_length4=$actual_length
operator=${arr[0]:actual_length}
echo $operator

if [ $operator == "+" ]
then
sum=0
i=0
	while [ $i -lt $actual_length1 ] 
	do
		if [ $i -lt $actual_length1 ]
		then
			let sum=$sum+${arr[0]:i:1}
		fi
		let i=$i+1
	done

echo $sum
fi

if [ $operator == "-" ]
then
sum=${arr[0]:0:1}
i=1
	while [ $i -lt $actual_length2 ] 
	do
		if [ $i -lt $actual_length2 ]
		then
			#echo $sum
			let sum=$sum-${arr[0]:i:1}
		fi
		let i=$i+1
	done

echo $sum
fi
if [ $operator == "*" ]
then
echo inside * loop
sum=${arr[0]:0:1}
i=1
	while [ $i -lt $actual_length3] 
	do
		if [ $i -lt $actual_length3 ]
		then
			let sum=$sum*${arr[0]:i:1}
		fi
		let i=$i+1
	done

echo $sum
fi

if [ $operator == "/" ]
then
sum=${arr[0]:0:1}
i=1
	while [ $i -lt $actual_length4 ] 
	do
		if [ $i -lt $actual_length4 ]
		then
			let sum=$sum/${arr[0]:i:1}
		fi
		let i=$i+1
	done

echo $sum
fi


