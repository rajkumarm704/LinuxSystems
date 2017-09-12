#!/bin/bash

case $1 in
'1')who am i;;
'2')echo $SHELL;;
'3')echo $HOME;;
'4')uname -sr;;
'5')pwd;;
'6')who | wc -l;;
'7')cat /etc/shells;;
'8')df -h;;
'9')cat /proc/cpuinfo;;
'10')cat /proc/meminfo;;
'11')cat /proc/filesystems;;
'12')ps;;
esac
