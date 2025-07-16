import os

services = ["ufw", "fail2ban", "cron"]

for svc in services:
    status = os.system(f"systemctl is-active --quiet {svc}")
    if status == 0:
        print(f"{svc} => Aktif")
    else:
        print(f"{svc} => Mati")
