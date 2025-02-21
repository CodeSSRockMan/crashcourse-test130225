#!/bin/bash

while true; do
  echo "$(date '+%T') - CPU Usage: $(top -bn1 | grep "Cpu(s)" | awk '{print 100 - $8 "%"}')"
  sleep 5
done

