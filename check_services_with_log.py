import os
from datetime import datetime

# Nama file log
log_file = "services.log"

# Tambahkan timestamp
with open(log_file, "a") as f:
    f.write(f"\n--- {datetime.now()} ---\n")

    services = ["ufw", "fail2ban", "cron"]

    for svc in services:
        status = os.system(f"systemctl is-active --quiet {svc}")
        if status == 0:
            output = f"{svc} => Aktif"
        else:
            output = f"{svc} => Mati"

        print(output)         # tampilkan di terminal
        f.write(output + "\n")  # simpan ke file
