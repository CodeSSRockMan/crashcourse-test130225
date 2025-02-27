#!/bin/bash
# Script: 18_regex_alternation.sh
# Write a script that finds lines containing either "failed" or "denied" using regex alternation.
grep -E "failed|denied" "$1"
# failed|denied means that is either failed or denied, | represents "or" in regex

