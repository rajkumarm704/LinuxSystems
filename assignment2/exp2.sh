#!/bin/bash

echo enter the number
read n

final_number=$n
let final_number_copy=$n+1
iteration=100
i=1
j=1
while [ $i -le $iteration ]
do
	k=1
	while [ $k -le $i ]
	do
		echo -n $j" "
		let k=$k+1
		let j=$j+1

		if [ $j -eq $final_number_copy ]
		then
			break
		fi
		
	done	

	echo
	let i=$i+1	

	if [ $j -gt 10 ]
			then
			#	echo exit_
				break
			fi
	

done

