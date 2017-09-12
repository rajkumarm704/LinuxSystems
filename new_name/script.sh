#!/bin/bash

touch filenames
ls > filenames

#cat filenames

i=0
count=`cat filenames | wc -l`
let count=$count+1

while [ $i -lt $count ]
do 
	filename_v=`head -$i filenames | tail -1`

	
	if [ -f $filename_v ]
	then
		
		#echo $filename_v | tr [:upper:] [:lower:]
		echo $filename_v " is file."

	elif [ -d $filename_v ]
	then 
		#echo $filename_v | tr [:lower:] [:upper:]
		echo $filename_v "is directory."

	fi
	let i=$i+1
done

