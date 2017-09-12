#!/bin/bash

echo enter three sides of triangle
read a b c 

let A=$a*$a
let B=$b*$b
let C=$c*$c

let sumAB=$A+$B
let sumAC=$A+$C
let sumBC=$B+$C

if [ $A -eq $sumBC -o $B -eq $sumAC -o $C -eq $sumAB ]
then
echo it is right angled triangle
else
echo not a right angled triangle
fi
 
