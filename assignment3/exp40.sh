#!/bin/bash

touch log_exp40.sh

cat demofile > log_exp40.sh

touch temp_file
line_count=`cat $1 | wc -l`
echo 0.2 \* $line_count | bc > temp_file
percent=`cut -d '.' -f1 temp_file`
echo 20 % of lines are $percent 

ii=0
j=$percent

while [ $ii -lt $percent ]
do
	sed -i "${j}d" $1
	sed -i "${j}i\<---DEL--->" $1
	
	let ii=$ii+1
	let j=$j+1
done

cat demofile >> log_exp40.sh
