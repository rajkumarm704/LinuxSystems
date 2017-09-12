#!/bin/bash

farg=$1
sarg=$2
targ=$3

echo "$2"
#exit 0
if [ $sarg == "+" ]
then
echo inside + loop
sum=0
	let sum=$farg+$targ
	echo $sum
fi 

if [ $sarg == "-" ]
then
echo inside - loop
sum=0
	let sum=$farg-$targ
	echo $sum
fi 

if [ $sarg == '*' ]
then
#$echo inside * loop
sum=0
	let sum=$farg*$targ
	echo $sum
fi 

if [ $sarg == "/" ]
then
echo inside / loop
sum=0
	let sum=$farg/$targ
	echo $sum
fi 
