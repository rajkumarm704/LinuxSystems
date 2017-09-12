#!/bin/bash

i=0
for i in $(seq 1 100)
do
let temp=$i%2
if [ $temp -eq 0 ]
then
echo $i
fi
done
