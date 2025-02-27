#!/bin/bash
# Script: 19_using_extended_regex.sh
# Write a script using grep -E to find all lines containing words that have three or more consecutive vowels.
grep -E '[A-Za-z0-9]*[aeiouAEIOU]{3,}[A-Za-z0-9]*' "$1"
# [A-Za-z0-9]* means that the pattern containing 3 consecutive vowels can be in any part of the word
# [aeiouAEIOU]{3,} is the key for matching 3 consecutive vowel words
