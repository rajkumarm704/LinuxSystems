#!/bin/bash

echo 'Enter the numer:'
read num
for j in $(seq 1 $num)
do
	for i in $(seq 1 $j)
	do
		echo -n "$i "
	done 
	echo
done
bash rev_exp1.sh
