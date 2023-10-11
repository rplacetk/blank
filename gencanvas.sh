#!/bin/bash

if [ "$#" -ne 3 ]; then
  echo "Usage: $0 <width> <height> <name>"
  exit 1
fi

width=$1
height=$2
name=$3

file_size=$((width * height))

dd if=/dev/zero of=$name bs=1 count=$file_size
echo "Created $name with a size of $file_size bytes."