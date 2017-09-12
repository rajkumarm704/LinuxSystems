#!/bin/bash

#Create file to store information about files ystems
touch mount_info
touch fs_file
touch free_space_file
touch mount_file

#Store the file system information in a file
df -h | tr -s ' ' > mount_info
i=0

`cut -d ' ' -f1 mount_info > fs_file`
`cut -d ' ' -f4 mount_info > free_space_file`
`cut -d ' ' -f6 mount_info > mount_file`


count=`cat mount_info | wc -l`
#echo $count

#Run a loop to check free space of file system
while [ $i -lt $count ]
do
	fs_v=`head -$i fs_file | tail -1`
	free_space_v=`head -$i free_space_file | tail -1`
	mount_v=`head -$i mount_file | tail -1`

	if [ $1 == $fs_v ]
	then
		echo -n "File System is mounted on "
		echo -n $mount_v		
		echo " with free space of "$free_space_v
		break
	fi

	let i=$i+1
done

