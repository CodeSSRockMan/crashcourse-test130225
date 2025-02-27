#!/bin/bash
# Script: 04_search_multiple_files.sh
# Write a script using grep to search for the word "warning" across multiple .log files in a directory.
grep -i "warning" "$1"/*.log
