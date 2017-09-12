#!/bin/bash

echo enter 3 marks of student
read a b c
let sum=$a+$b+$c

if [ $sum -lt 50 ]
then 
echo student fails
elif [ $sum -gt 50 -a $sum -lt 101 ]
then
echo student is average
elif [ $sum -gt 100 ]
then
echo student is excellent
fi
 
