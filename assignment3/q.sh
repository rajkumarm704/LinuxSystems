touch f11
arr=(/home/rajkumar/Desktop/assignment3/ /usr/bin /usr/sbin /usr/local/bin /usr/local/sbin /sbin /bin /usr/games)
#ls /home/rajkumar/Desktop/assignment3/ > f11
ls ${arr[$1]} > f11


count=`cat f11 | wc -l`
echo $count

i=0
while [ $i -lt $count ]
do
	filename=`head -$i f11 | tail -1`
	if [ -x $filename ]
	then
		echo -n $filename " "
		echo -n $i " "
		echo exe
	fi
	let i=$i+1
done
