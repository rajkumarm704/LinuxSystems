#!/bin/bash

#cd ..
touch path
pwd > path

path_v=`head -1 path | tail -1`
echo $path_v

cd ..
mv $path_v $1

