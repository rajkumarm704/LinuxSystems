#!/bin/bash

echo enter a number
read a
let b=$a%5

if [ $b -eq 0 ]
then
echo number is divisible by 5
else
echo number is not divisible by 5
fi
