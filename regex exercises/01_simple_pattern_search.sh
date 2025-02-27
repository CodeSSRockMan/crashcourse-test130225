#!/bin/bash
# Script: 01_simple_pattern_search.sh
# Write a script using grep to find all lines containing the word "Linux" in a text file.
grep -E "\bLinux\b" "$1"
#-E is for Extended Regular Expressions
#\bLinux\b only Linux as a word will count

