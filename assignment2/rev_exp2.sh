#!/bin/bash

echo 'Enter the number:'
read num
tnum=1
flag=0
for i in $(seq 1 $num)
do
	for j in $(seq 1 $i)
	do
		
		echo -n "$tnum "
		let tnum=$tnum+1
		if [ $tnum -eq $num ]
		then
			break;
			flag=1
		fi
	done

	if [ $flag -eq 1 ]
	then
		break
	fi

	echo

done
