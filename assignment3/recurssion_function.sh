#!/bin/bash

function_()
{
	echo $1
	shift 1

	if [ ! $# -eq 0 ]
	then 
		function_ $@
	fi
}

function_ $@
