#!/bin/bash
# Script: 17_find_dates_in_specific_format.sh
# Use grep to extract all dates matching the format YYYY-MM-DD from a file.
grep -o -E '[0-9]{4}-(0[1-9]|1[0-2])-(0[1-9]|[12][0-9]|3[01])' "$1"
# [0-9]{4} matches exactly four digits
# - matches the dash
# (0[1-9]|1[0-2]) matches months
# 0[1-9] matches first 9 months
# 1[0-2] matches months 10 to 12
# - matches second dash
# (0[1-9]|[12][0-9]|3[01]) matches valid days
# 0[1-9] matches first 9 months
# [12][0-9] matches any two digit number where the first digit is either 1 or 2, and the second one from 0 to 9
# 3[01] matches the rest of the days 30 and 31
