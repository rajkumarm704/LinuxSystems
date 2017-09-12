#!/bin/bash

echo enter a year
read a
let year=$a%4
if [ $year -eq 0 ]
then
echo it is leap year
else
echo not a leap year
fi 
