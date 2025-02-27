#!/bin/bash
# Script: 14_find_emails_using_regex.sh
# Write a script using grep to extract all email addresses from a given file.
grep -o -E '[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+' "$1" | sort | uniq
# \ is for continuing the code in the same line, otherwise it would read it as different commands
# $1 is filename
# [A-Za-z0-9._%+-] matches the username part
# accepts A-Z a-z 0-9 and characters ._%+-
# [A-Za-z0-9.-] matches the domain part
# the extra + is for ensuring that the username is not empty and it has at least one character
# $1 is the filename
# sort will put duplicated addresses next to each other, uniq will remove them
