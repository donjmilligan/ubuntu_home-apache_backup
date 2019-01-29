#!/bin/bash
#[[ $# -lt 6 ]] && {
#	echo "Usage: ${FUNCNAME} cmd dev bus slot pid pin";
#	exit 1
#}
#Simple Backup Script
#cd ${0%/*} # force current directory to be same as file for relative paths
#cmd=$0 # command to run

##tar -czvf home_backup.tar.gz ~/.bash_history ~/.icons/ ~/.themes/ ~/.fonts/ ~/.cursor/ ~/.config/ ~/.cache/ 

#	cp /etc/apache2/sites-available/* apache2/sites-available/
#	cp /etc/apache2/apache2.conf apache2/
#	cp /etc/apache2/ports.conf apache2/
#	cp /home/descere/.xbind* mouse/
#	cp /etc/mysql/mysql.conf.d/mysqld.cnf mysql/mysql.conf.d/
#	cp /usr/share/plymouth/themes/ubuntu-logo/ubuntu-logo.script plymouth/


# apache2
	sudo systemctl stop apache2
	sudo systemctl stop mysql
	sudo systemctl disable apache2
	sudo systemctl disable mysql

#	cp /etc/apache2/sites-available/* apache2/sites-available/
#	cp /etc/apache2/apache2.conf apache2/
#	cp /etc/apache2/ports.conf apache2/
#	cp /home/descere/.xbind* mouse/
#	cp /etc/mysql/mysql.conf.d/mysqld.cnf mysql/mysql.conf.d/
	cp /usr/share/plymouth/themes/ubuntu-logo/ubuntu-logo.script /home/descere/.CUSTOM/CONFIGS/
	cp /usr/share/plymouth/themes/default.grub /home/descere/.CUSTOM/CONFIGS/
	cp /usr/share/gnome-shell/theme/ubuntu.css /home/descere/.CUSTOM/CONFIGS/
	sudo tar -czvf apache_backup.tar.gz /etc/apache2/sites-available/ /etc/apache2/apache2.conf /etc/apache2/ports.conf /etc/mysql/mysql.conf.d/mysqld.cnf /etc/php/ /etc/phpmyadmin/ /var/www/ /var/lib/mysql/ /usr/share/phpmyadmin/.htaccess
	
#}
# home config and important files
#homeBackup (){
	sudo tar -czvf BINARY.tar.gz /home/descere/.BINARY
	sudo tar -czvf WWW.tar.gz /home/descere/.WWW
#	sudo tar -czvf cache_backup.tar.gz /home/descere/.cache
	sudo tar -czvf homeHiddenFolders_backup.tar.gz /home/descere/.cursors /home/descere/.conky /home/descere/.easystroke /home/descere/.fonts /home/descere/.gimp-2.8 /home/descere/.sword /home/descere/.themes /home/descere/.thunderbird /home/descere/.conk*
	sudo tar -czvf homeHiddenFiles.tar.gz/home/descere/.bash_history /home/descere/.mysql_history /home/descere/.xbindkeysrc /home/descere/.xbindkeysrc_blender /home/descere/.xbindkeysrc_gimp /home/descere/.xbindkeysrc_main /home/descere/.xinputrc /home/descere/.profile /home/descere/.bash_profile
	sudo tar -czvf config.tar.gz /home/descere/.config
	sudo chown -R descere:descere *
	mv * /home/descere/.ZBACKUP_DONE
	cd /home/descere/.ZBACKUP_DONE
	sudo tar -czvf CUSTOM.tar.gz /home/descere/.CUSTOM
	apt list --installed > installed_programsList.txt
#}








sleep 10
exit 0