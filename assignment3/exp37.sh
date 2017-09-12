#!/bin/bash

#Write a program to print langest and shortest username

#Create a file to store username
touch username

#Extract the username  and store it in a file
cut -d ':' -f3 /etc/passwd > username

#Find out the total number of line for loop
total_lines=`cat username | wc -l`

i=1

#Run a loop store the username in file
while [ $i -lt $total_lines ]
do
	#Find out the character length and store it in an array
	user_id=`head -$i username | tail -1`
	arr[i]=$user_id
	let i=$i+1
done

#Find the longest username
index=1
count=0
for j in ${arr[@]}
do
	current_number=${arr[index]}

	if [ $current_number -gt 500 -a $current_number -lt 10000 ]
	then
		let count=$count+1
	fi
	let index=$index+1
done
echo
echo the number of user between 500 and 10000 is $count
echo


