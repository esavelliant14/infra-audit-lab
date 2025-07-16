# infra-audit-lab
basic script linux


# backup_config.sh

untuk melakukan backup hosts, ufw, dan cron

# prosedur
'''bash
chmod +x backup_config.sh
'''bash
untuk memastikan script jalan gunakan perintah

'''bash
./backup_config.sh
'''bash

jika sudah berjalan bisa lanjut ke crontab untuk schedule backup, sample dilakukan setiap jam 2 pagi

'''bash
crontab -e
0 2 * * * /home/kamu/backup_config.sh
'''bash


# check service

script ini digunakan untuk melakukan check pada service ufw, fail2ban, dan cron apakah service up atau down

#requirement

pastikan fail2ban sudah diinstall 
'''bash
apt install fail2ban
'''bash

#monitoring load server menggunakan PSUTIL

script python untuk memonitor usage cpu monitor, ada monitor.py untuk monitor detail cpu, dan monitor1.py untuk monitor summary cpu ram dan disk

requirement

'''bash

pip3 install python

'''bash

atau

'''bash

pip install python

'''bash


perintah eksekusi

'''bash

python3 monitor.py

python monitor.py

'''bash


#script copas menggunakan shutil

Melakukan copas sebuah file ke sebuah folder

Requirement

'''bash
pip3 install shutils
'''bash

Eksekusi

'''bash
python3 kopas.py
'''bash

NOTE : jangan lupa source destination diperhatikan
