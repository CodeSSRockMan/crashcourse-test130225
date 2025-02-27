#!/bin/bash
# Script: 13_anchors_in_regex.sh
# Use grep to find all lines starting with "ERROR".
grep '^ERROR' $1
# $1 is the filename
# ^ERROR will match all lines starting with that word, regardless if it has more characters or spaces after it
