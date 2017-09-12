#!/bin/bash

echo enter the number 
read n
i=0

while [ $i -le $n ]
do
	j=1
	while [ $j -le $i ]
	do
		echo -n $j" "
		let j=$j+1		
	done	
	echo
	let i=$i+1	
done
