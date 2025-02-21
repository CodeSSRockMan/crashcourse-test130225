#!/bin/bash

for text_file in *.txt; do

    if [[ -e "$text_file" ]]; then
	    file="$text_file.*}_backup.txt";
	    mv $text_file $file
	    echo "$text_file renamed to $file"
    fi
done


