#!/bin/bash

echo enter a number between 0 - 10
echo -n enter the number:
read x
if [ -n $x ]
then
	case $x in
		1)echo you entered 1.;;
		2)echo you entered 1.;;
		3)echo you entered 1.;;
		4)echo you entered 1.;;
		5)echo you entered 1.;;
		6)echo you entered 1.;;
		7)echo you entered 1.;;
		8)echo you entered 1.;;
		9)echo you entered 1.;;
		0 | 10)echo you entered 1.;;
		*)echo you enter a wrong number.;;

	esac
else
echo you enter wrong number
fi 
