#!/bin/bash

#Write a program to print langest and shortest username

#Create a file to store username
touch username

#Extract the username  and store it in a file
cut -d ':' -f1 /etc/passwd > username

#Find out the total number of line for loop
total_lines=`cat username | wc -l`

i=1

#Run a loop store the username in file
while [ $i -lt $total_lines ]
do
	#Find out the character length and store it in an array
	word_length=`head -$i username | tail -1 | wc -c`
	let word_length=$word_length-1
	arr[i]=$word_length
	let i=$i+1
done

#Find the longest username
index=1
greatest=0
for j in ${arr[@]}
do
	current_number=${arr[index]}

	if [ $greatest -gt $current_number ]
	then
		greatest=$greatest
		
	else
		greatest=$current_number
		gindex=$index
	fi
	let index=$index+1
done

#Find the shortest username
least=${arr[0]}
index=1
for j in ${arr[@]}
do
	current_number=${arr[index]}

	if [ $least -lt $current_number ]
	then
		least=$least
		
	else
		least=$current_number
		lindex=$index
	fi
	let index=$index+1
done
echo
echo the longest username is `head -$gindex username | tail -1` and the shortest username is `head -$lindex username | tail -1`
echo


