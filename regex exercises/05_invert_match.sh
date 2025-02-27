#!/bin/bash
# Script: 05_invert_match.sh
# Use grep to display all lines that do not contain the word "success" in a log file.
grep -v "success" "$1"
# -v inverts the coincidence
