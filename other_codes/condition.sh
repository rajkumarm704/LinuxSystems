#!/bin/bash

echo enter two numbers
read x y
if [ $x -gt $y ]
then
	echo $x 
else
	echo $y
fi
