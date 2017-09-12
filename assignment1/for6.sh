#!/bin/bash

echo enter the number for factorial
read a

let b=$a
let c=$a

i=$a
fact=1
while [ $i -ne 1 ]
do
let temp=$c
let fact=$fact*$temp
let c=$c-1
let i=$i-1
done
echo $fact
