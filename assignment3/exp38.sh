#!/bin/bash

#Pass the value of PATH variable to another variable
a=$PATH
i=0

#Find total word count to run the loop in order to identify number of separators (:)
word_count=`echo $a | wc -c`

echo $word_count

let word_count_1=$word_count-1

#Find number of separators
while [ $i -lt $word_count_1 ]
do
	if [ ${a:i:1} == ":" ]
	then
		let sep_count=$sep_count+1
	fi
	let i=$i+1
done

#Display the number of Separators
echo $sep_count

i=0
ii=1
j=0
count=0

#Run the loop number of times separators are present plus one
let scount=$sep_count+1

while [ $i -lt $scount ]
do

#Store the location in Path variable in an array
	arr[i]=`echo $PATH | cut -d ':' -f$ii`

	######CODE HERE########
	
	#################

	#Create a file to store list of files present in the particular location
	touch f11
	ls ${arr[i]} > f11

	#Find out the number of lines so that the loop can be run that number of times	
	count=`cat f11 | wc -l`

	ij=0
	while [ $ij -lt $count ]
	do
		
		#Filter all lines one by one and store it in a variable name "filename"
		filename=`head -$ij f11 | tail -1`

		#Check if the file is executable
		if [ -x $filename ]
		then
			#Print executable filenames and the current count with message
			echo filename is $filename
			echo current_count is $ij
			echo exe*******
			
		fi
		
		#Increment loop variable count
		let ij=$ij+1
	done
	###############
	
	#Increment othe loop variable counts
	echo $count
	let i=$i+1
	let ii=$ii+1

	done
	

<<"COMMENT"

####CODE HERE##########
#################
touch f11
ls ${arr[i]} > f11
count=`cat f11 | wc -l`
#echo $count

i=0
while [ $i -lt $count ]
do
	filename=`head -$i f11 | tail -1`
	if [ -x $filename ]
	then
		echo $filename
		echo $i
		echo exe
	fi
	let i=$i+1
done
###############
########CODE END##########



####################################

touch f11
ls /home/rajkumar/Desktop/assignment3/ > f11
count=`cat f11 | wc -l`
echo $count

i=0
while [ $i -lt $count ]
do
	filename=`head -$i f11 | tail -1`
	if [ -x $filename ]
	then
		echo $filename
		echo $i
		echo exe
	fi
	let i=$i+1
done

COMMENT

