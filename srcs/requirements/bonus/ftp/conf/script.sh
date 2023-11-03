#!/bin/bash

if [ ! -f "/etc/vsftpd.userlist" ]
then
	#probably don't need this cos got useradd but too lazy to change
	mkdir -p /home/$FTP_USER
	#need to add local user because pam authentication only allow to insert user (nowhere to put password) hence i guess need to create local user and set up password. (not like virtual). 
	useradd -m $FTP_USER
	echo "$FTP_USER:$FTP_PASSWORD" | /usr/sbin/chpasswd &> dev/null
	#THIS IS THE MOST IMPORTANT BIT, OTHERWISE FTP-SERVER WON'T SERVE AND WRITE THE FILES. EXTREMELY PAINFUL TO FIGURE THIS OUT.
	chown -R ftp:ftp /home/
	#AFTER THAT SET BACK PERMISSIONS FOR LOCAL USER
	chown -R $FTP_USER:$FTP_USER /home/$FTP_USER/
	#PAM AUTHENTICATION	
	echo $FTP_USER > /etc/vsftpd.userlist
fi
vsftpd /etc/vsftpd.conf

