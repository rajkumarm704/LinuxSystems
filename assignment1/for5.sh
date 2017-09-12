#!/bin/bash
echo enter the value of m and n
read m n
i=0
let nn=$n-1
for i in $(seq $m $nn)
do
let temp=$i%2
if [ $temp -ne 0 ]
then
let sum=$sum+$i
fi
done
echo sum is $sum
