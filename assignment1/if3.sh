#!/bin/bash

echo enter two numbers
read a b
let a=$a*$b
let z=$a%2

if [ $z -eq 0 ]
then
echo number is even
else
echo number is odd
fi
