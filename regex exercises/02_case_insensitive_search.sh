#!/bin/bash
# Script: 02_case_insensitive_search.sh
# Create a script using grep to find occurrences of "bash," ignoring case.
grep -E -i "\bash\b" "$1"
#-E is for Extended Regular Expressions

