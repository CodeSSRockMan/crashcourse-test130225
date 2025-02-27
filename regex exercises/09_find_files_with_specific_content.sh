#!/bin/bash
# Script: 09_find_files_with_specific_content.sh
# Write a script using grep to list all filenames containing the word "script" in their content.
grep -l -R "script" "$1"
# $1 is the directory
# -l list the files that contains the pattern
# -R is for searching files recursively
