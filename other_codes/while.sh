#!/bin/bash

i=0
while [ $i -lt 9 ]
do
echo $i 
let i=$i+1
done

i=0
until [ $i -eq 10 ]
do
echo $i
let i=$i+1
done 
