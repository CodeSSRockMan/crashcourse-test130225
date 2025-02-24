#!/bin/bash

while true; do
  cpu_idle=$(top -bn1 | grep "Cpu(s)" | awk '{print $8}')
  cpu_usage=$(echo "100 - $cpu_idle" | bc)

  echo "$(date '+%T') - CPU Usage: ${cpu_usage}%"

  if (( $(echo "$cpu_usage > 90" | bc -l) )); then
    echo "ALERTA: El uso de la CPU ha superado el 90%."
  fi

  sleep 5
done
