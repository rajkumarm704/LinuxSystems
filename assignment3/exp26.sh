#!/bin/bash

#Program to greet user according to time

#Findout the current hour
hour=`date +%H`

#Display message according to time
if [ $hour -gt 9 -a $hour -lt 13 ]
then
	echo Good Morning
elif [ $hour -gt 13 -a $hour -lt 17 ]
then
	echo Good Afternoon
elif [ $hour -gt 17 -a $hour -lt 21 ]
then
	echo Good Evening
elif [ $hour -gt 21 -a $hour -lt 9 ]
then
	echo Good Night
fi
