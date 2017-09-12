#!/bin/bash

#Create file to store information about files ystems
touch mount_info
touch fs_file
touch used_space_file

#Store the file system information in a file
df -h | tr -s ' ' > mount_info
i=0

`cut -d ' ' -f1 mount_info > fs_file`
`cut -d ' ' -f5 mount_info > used_space_file`

count=`cat mount_info | wc -l`
let count=$count+1

#Run a loop to check free space of file system
while [ $i -lt $count ]
do
	fs_v=`head -$i fs_file | tail -1`
	used_space_v=`head -$i used_space_file | tail -1 | tr -s '%' ' '`

	if [ $used_space_v -lt 10 ]
	then
		
		echo "File System '" $fs_v "' has less than 10% space used "
	fi

	let i=$i+1
done

