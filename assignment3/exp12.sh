#!/bin/bash

#Program to find length of each string enterd by user

#Store string values in an array
arr=($@)

index=0

for i in $*
do
	echo length of $i is ${#arr[index]}
	let index=$index+1
done
