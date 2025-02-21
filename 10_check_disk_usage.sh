#!/bin/bash

disk=$(df -h | awk '$6 == "/" {print $1}')
usage=$(df -h | awk '$6 == "/" {gsub(/%/, "", $5); print $5}')

echo "Principal Disk: $disk"
echo "Usage: $usage%"
if [ "$usage" -gt 80 ]; then
	echo "Alert: Disk Usage is over 80!"
fi
