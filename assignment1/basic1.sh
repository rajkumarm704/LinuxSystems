#!/bin/bash

echo enter the length and breadth of rectangle
read l b
echo the circumference of rectangle is
expr $l + $l + $b + $b 
