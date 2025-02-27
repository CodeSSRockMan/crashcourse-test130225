#!/bin/bash
# Script: 10_pipe_with_grep.sh
# Write a script that lists running processes (ps aux) and uses grep to display only processes owned by a specific user.
ps aux | grep "^$1" | grep -v "grep"
# ps is process status
# ps aux shows all processes
# ^ matches the start of the line
# $1 is the username
# the pipe | will send the output as input for the next command
# grep -v "grep" will exclude the grep processes
#
