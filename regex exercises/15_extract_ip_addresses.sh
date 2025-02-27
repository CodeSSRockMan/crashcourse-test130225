#!/bin/bash
# Script: 15_extract_ip_addresses.sh
# Extract all valid IPv4 addresses from a log file using grep and regex.

# Extract potential IPv4 addresses
potential_ips=$(grep -o -E '\b[0-9]+\.[0-9]+\.[0-9]+\.[0-9]+\b' "$1")

# Loop through each extracted IP
for ip in $potential_ips; do
    octet1=$(echo "$ip" | cut -d '.' -f 1)
    octet2=$(echo "$ip" | cut -d '.' -f 2)
    octet3=$(echo "$ip" | cut -d '.' -f 3)
    octet4=$(echo "$ip" | cut -d '.' -f 4)

    if [[ $octet1 -ge 0 && $octet1 -le 255 && \
      $octet2 -ge 0 && $octet2 -le 255 && \
      $octet3 -ge 0 && $octet3 -le 255 && \
      $octet4 -ge 0 && $octet4 -le 255 ]]; then
    echo "$ip"
fi
done

# -ge is greater than or equal, -le is less than or equal
