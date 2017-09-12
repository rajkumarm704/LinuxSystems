#!/bin/bash

arr=$@
echo $arr
length=${#arr}
largest_number=0
j=0
while [ $j -lt $length ]
do
	n2=${arr[0]:j:1}
	let j=$j+2
	if [ $largest_number -gt $n2 ]
	then
		largest_number=$largest_number
	else
		largest_number=$n2
	fi
done
echo $largest_number
