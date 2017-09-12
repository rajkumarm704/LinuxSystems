#!/bin/bash

touch swp_files
find . -type f -name *.swp > swp_files
count=`cat swp_files | wc -l`

i=0

while [ $i -lt $count ]
do
	file_v=`head $i swp_files | tail -1`
	rm $file_v
	let i=$i+1
done
