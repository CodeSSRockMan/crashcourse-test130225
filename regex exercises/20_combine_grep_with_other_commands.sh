#!/bin/bash
# Script: 20_combine_grep_with_other_commands.sh
# Create a script that lists the 5 most recent logins (last) and filters entries using grep to display only logins from a particular user or IP address.
user_or_ip="$1"
num_logins="$2"
last -n "$num_logins" | grep "$user_or_ip"

#last -n "$num_logins" shows most recent logins
#grep "$user_or_ip" shows the entries that match the username or ip
