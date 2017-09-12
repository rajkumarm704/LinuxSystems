#!/bin/bash

echo enter the value of n
read n
i=0
for i in $(seq 0 $n)
do
let sum=$sum+$i
done

echo $sum
