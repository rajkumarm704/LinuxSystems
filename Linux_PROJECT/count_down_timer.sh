#!/bin/bash

seconds_temp=0
timer=15
val=0
echo start_
while [ 1 ]
do
	seconds=`date +%S`

	if [ $seconds -ne $seconds_temp ]
	then
#		if [ $val == "a" -o $val == "b" -o $val == "c" ]
#		then
#			echo "break"
#			break
#		fi
 
		echo -n $timer:
		let timer=$timer-1
		
		if [ $timer -eq 0 ]
		then
			break;
#echo stop_
		fi
		seconds_temp=$seconds
	fi
done

