#!/bin/bash
# Script: 11_regex_character_classes.sh
# Use grep to display all lines containing any number (digit) from a file.
grep '[0-9]' "$1"
# $1 is filename
