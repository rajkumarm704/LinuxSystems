#! /bin/bash

echo enter three values
read a b c
if [ $a -gt $b -a $a -gt $c ]
then
echo $a is greatest
else
echo $a is not greatest
fi
