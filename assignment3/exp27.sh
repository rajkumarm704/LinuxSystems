#!/bin/bash

echo $1 | tr [:lower:] [:upper:]
echo $1 | tr [:upper:] [:lower:]
