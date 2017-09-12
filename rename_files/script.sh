#!/bin/bash

cd $1

touch zzzzzzz
ls > zzzzzzz

i=1
count=`cat zzzzzzz | wc -l`

while [ $i -lt $count ]
do
	file_name=`cat zzzzzzz | head -$i | tail -1`
	suffix=`cat zzzzzzz | head -$i | tail -1 | cut -d '.' -f2`
	mv $file_name $2"_"$i"."$suffix 
	let i=$i+1
done

rm zzzzzzz


