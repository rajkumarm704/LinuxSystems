#!bin/bash

line_count=`cat datafile | wc -l`

for i in $(seq 1 $line_count )
do
	name=`cat datafile | head -$i | tail -1 | cut -d ',' -f1`
	address=`cat datafile | head -$i | tail -1 | cut -d ',' -f2`
	phone=`cat datafile | head -$i | tail -1 | cut -d ',' -f3`
	email=`cat datafile | head -$i | tail -1 | cut -d ',' -f4`

	echo $name"		"$address"		"$phone"	"$email
done
