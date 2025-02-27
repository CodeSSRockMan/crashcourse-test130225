#!/bin/bash
# Script: 03_count_matches.sh
# Use grep to count how many times the word "error" appears in a log file.
grep -o "error" "$1" | wc -l
# -o will only find the first coincidence in each line
