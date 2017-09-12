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
	username=`head -$i username | tail -1`

	if [ $1 == $username ]
	then
		echo user present
		break
	fi	
	let i=$i+1
done
