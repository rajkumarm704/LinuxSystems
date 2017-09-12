#!/bin/bash
echo enter the value of m and n

read m n

i=m 
for i in $(seq $m $n)
do
echo $i
done
 
