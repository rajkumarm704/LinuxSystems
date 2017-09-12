#!/bin/bash

echo enter a number
read x
if [ $x -gt 30 -a $x -lt 40 ]
then
echo number is between 30 and 40
else
echo number is outside the range
fi
