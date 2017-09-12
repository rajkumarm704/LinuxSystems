#!/bin/bash

touch log

ls -ah>log

touch swpfiles

find . -type f -name *.swp > swpfiles
count=`cat swpfiles | wc -l`

i=0
let count=$count+1
while [ $i -lt $count ]
do
echo inside while_loop

	filename=`cat swpfiles | head -$i | tail -1 | cut -d '/' -f2`
	echo $filename
	rm $filename
	let i=$i+1
done

ls -ah>>log
