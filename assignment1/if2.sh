#!/bin/bash

echo enter length and breadth
read l b
if [ $l -eq $b ]
then
echo it is a square
else
echo it is rectangle
fi
