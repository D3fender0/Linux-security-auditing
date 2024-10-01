#!/bin/bash

# Declare the file_system as an array with individual elements
file_system=("/home" "/tmp" "/var")

# Check for symbolic links
for dir in "${file_system[@]}"; do
    if [ -L "$dir" ]; then
        echo "You should check the symbolic link in the $dir directory"
    else 
        echo " $dir  doesn't have any symbolic link"
fi
done

for dir in "${file_system[@]}"; do
  k=  mount | awk -v dir="$dir" '$3 == dir {print $3}'

done

if [ -z $k ];then
        echo "No mounted directory found"

fi
