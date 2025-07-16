# infra-audit-lab
basic script linux


# backup_config.sh

untuk melakukan backup hosts, ufw, dan cron

# prosedur
```bash
chmod +x backup_config.sh
```

untuk memastikan script jalan gunakan perintah
```bash
./backup_config.sh
```

jika sudah berjalan bisa lanjut ke crontab untuk schedule backup, sample dilakukan setiap jam 2 pagi

```bash
crontab -e
0 2 * * * /home/kamu/backup_config.sh
```


# check service

script ini digunakan untuk melakukan check pada service ufw, fail2ban, dan cron apakah service up atau down

#requirement

pastikan fail2ban sudah diinstall 
```bash
apt install fail2ban
```

#monitoring load server menggunakan PSUTIL

script python untuk memonitor usage cpu monitor, ada monitor.py untuk monitor detail cpu, dan monitor1.py untuk monitor summary cpu ram dan disk

requirement

```bash
pip3 install python
```

atau

```bash
pip install python
```


perintah eksekusi

```bash
python3 monitor.py
```

atau

```bash
python monitor.py
```


#script copas menggunakan shutil

Melakukan copas sebuah file ke sebuah folder

Requirement

```bash
pip3 install shutils
```

Eksekusi

```bash
python3 kopas.py
```

NOTE : jangan lupa source destination diperhatikan di file kopas.py


#check ping dan dimasukkan ke log

script ping lalu dimasukkan ke dalam log hasilnya

```bash
./check_host.sh
```

#check service lalu jika mati langsung di restart supaya service up

misal service nginx atau fail2ban

```bash
check_service_action.sh
```
