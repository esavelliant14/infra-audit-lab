# infra-audit-lab
basic script linux


# backup_config.sh

untuk melakukan backup hosts, ufw, dan cron

# prosedur
```bash
chmod +x backup_config.sh
```

untuk memastikan script jalan gunakan perintah

./backup_config.sh

jika sudah berjalan bisa lanjut ke crontab untuk schedule backup, sample dilakukan setiap jam 2 pagi

crontab -e
0 2 * * * /home/kamu/backup_config.sh


# check service

script ini digunakan untuk melakukan check pada service ufw, fail2ban, dan cron apakah service up atau down

#requirement

pastikan fail2ban sudah diinstall 
apt install fail2ban

#monitoring load server menggunakan PSUTIL

script python untuk memonitor usage cpu monitor, ada monitor.py untuk monitor detail cpu, dan monitor1.py untuk monitor summary cpu ram dan disk

requirement


pip3 install python


atau


pip install python



perintah eksekusi


python3 monitor.py

python monitor.py



#script copas menggunakan shutil

Melakukan copas sebuah file ke sebuah folder

Requirement

pip3 install shutils

Eksekusi

'''bash
python3 kopas.py

NOTE : jangan lupa source destination diperhatikan
