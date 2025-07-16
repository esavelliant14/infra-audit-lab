#!/bin/bash
tanggal=$(date +%F)
mkdir -p ~/backup/$tanggal
cp /etc/hosts ~/backup/$tanggal/
cp /etc/ufw/ufw.conf ~/backup/$tanggal/
cp /var/log/syslog ~/backup/$tanggal/
