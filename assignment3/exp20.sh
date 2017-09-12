#!/bin/bash

#Calculate total number of lines to cut from file
let total_lines=$1+$2

#Show the required number of lines as given in command line argumnets
head -$total_lines $3 | tail -$2
