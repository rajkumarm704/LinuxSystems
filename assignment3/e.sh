#!/bin/bash

arr=($@)
echo ${arr[*]} | tr -d 10

