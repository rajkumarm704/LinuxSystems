#!/bin/bash

i=0
j=0
n=16
for i in $(seq 0 7)
do
	for j in $(seq 0 7)
	do
		#check for even and odd condition
		let eveni=$i%2
		let evenj=$j%2
		
		#print black for even row & even column
		if [ $eveni -eq 0 -a $evenj -eq 0  ]
		then
			echo -e -n "\033[47m  "
		#print white for even row & odd column
		elif [ $eveni -eq 0 -a $evenj -ne 0  ]
		then
			echo -e -n "\033[40m  "
		#print white for odd row & even column
		elif [ $eveni -ne 0 -a $evenj -eq 0  ]
		then
			echo -e -n "\033[40m  "
		#print black for odd row & odd column
		elif [ $eveni -ne 0 -a $evenj -ne 0  ]
		then
			echo -e -n "\033[47m  "
		fi
		
		let j=$j+1
	done
	
	let i=$i+1
	echo 
done	
echo -e -n "\033[40m  "	 
