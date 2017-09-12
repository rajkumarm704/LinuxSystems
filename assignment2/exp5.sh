#!/bin/bash

length=${#1}
temp=0
num=0
sum=0
for i in $(seq 1 $length)
do
	let temp=$length-$i
	let num=${1:temp:1}
	for j in $(seq 1 $temp)
	do	
		let num=$num*10
	done
	let sum=$sum+$num
	
done
echo $sum
