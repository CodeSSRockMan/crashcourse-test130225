#!/bin/bash
# Script: 12_regex_repetition.sh
# Write a script to find all lines containing at least two consecutive spaces.
grep -E ' {2,}' "$1"
# $1 is filename
# {n,} syntax is for matching n or more
