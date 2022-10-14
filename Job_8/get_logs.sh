#! /bin/sh

Date=$(date +%d-%m-%Y-%H:%M)
fichier=number_connection-$Date
last rouissi | sed '/^$/d' | sed '$d' | wc -l >> $fichier
tar -czvf /home/rouissi/Shell.exe/Job_8/$fichier.tar.gz $fichier


mv $fichier.tar.gz /home/rouissi/Shell.exe/Job_8/Backup
