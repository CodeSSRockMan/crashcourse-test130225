#!/bin/bash

#Trying a different approach that is more comfortable to work with
#So this time instead of having to work with direct values, I prepare them in a variable that is more understandable. It is not efficient, but it would help other programmers to understand it a bit better

source_dir=$1
destination_dir=$2

echo "Source directory: $1"
echo "$source_dir"
echo "Destination directory: $2"

if ! [ -d $source_dir ] || ! [ -d $destination_dir ]; then
	echo "Problem with one or both of the directories"
	exit 1
fi

cd $source_dir

cp *.log $destination_dir


