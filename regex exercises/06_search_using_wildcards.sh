#!/bin/bash
# Script: 06_search_using_wildcards.sh
# Create a script that finds all words starting with "auto" (like automate, automatic, automobile) in a given file.
grep -o '\bauto\w*' "$1"
# -o will print coincidences
# \b the word will always start by auto
# \w* any alphanumeric char after auto
