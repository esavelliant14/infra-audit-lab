#!/bin/bash

SERVICES=("nginx" "cron" "fail2ban")
LOG_FILE="/var/log/service_monitor.log"

echo "[$(date)] Service Check:" >> "$LOG_FILE"

for svc in "${SERVICES[@]}"
do
    if ! systemctl is-active --quiet "$svc"; then
        echo "$svc ❌ MATI - Restarting..." >> "$LOG_FILE"
        systemctl restart "$svc"
        echo "$svc ✅ Dihidupkan kembali oleh script." >> "$LOG_FILE"
    else
        echo "$svc ✅ AKTIF" >> "$LOG_FILE"
    fi
done

echo "-----------------------------" >> "$LOG_FILE"
