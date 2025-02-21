#!/bin/bash

       
for text_file in *.txt; do

    if [[ -e "$text_file" ]]; then
        echo "$text_file"
    fi
done

