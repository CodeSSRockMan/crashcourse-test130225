#!/bin/bash
# Script: 08_display_line_numbers.sh
# Use grep to print matching lines along with their line numbers.
grep -n "$1" "$2"
# -n is for displaying the line number
# $1 is the pattern
# $2 is the file to read from
