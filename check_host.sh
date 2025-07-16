#!/bin/bash

HOSTS=("8.8.8.8" "1.1.1.1" "google.com" "9.9.9.9")
LOG_FILE="/var/log/host_check.log"

echo "[$(date)] Checking Hosts:" >> "$LOG_FILE"

for host in "${HOSTS[@]}"
do
    if ping -c 1 -W 1 "$host" &> /dev/null; then
        echo "$host ✅ UP" >> "$LOG_FILE"
    else
        echo "$host ❌ DOWN" >> "$LOG_FILE"
    fi
done

echo "-----------------------------" >> "$LOG_FILE"
