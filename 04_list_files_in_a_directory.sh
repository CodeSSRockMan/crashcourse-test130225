#!/bin/bash
echo "Input the directory path"
read dpath

if [ -d "$dpath" ] ; then
	cd $dpath
	for file in $(ls $dpath)
	do
	echo $file
	done;	
else
	echo "Filepath not found"
fi

