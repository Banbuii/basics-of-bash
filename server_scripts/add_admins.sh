#!/bin/bash
# Einfaches script, um die users 'ersie_000' bis 'ersie_100' in /home/ersies/ zu erstellen

mkdir -p "/home/admins"

numAdmins=3
count=0
until [ $count -ge $numAdmins ]; do
	currentAdmin=$(printf "admin_%d\n" $count)
	echo "Generating admin $currentAdmin"

	useradd $currentAdmin -s /bin/bash -g admins -b /home/admins -m -N
	usermod -a -G admins,adm,cdrom,sudo,dip,plugdev,lxd,root $currentAdmin

	chmod 770 /home/admins/$currentAdmin

	let count+=1
done

echo admin_0:finfcat.ist.beste.cat | chpasswd
echo admin_1:honeypot.ist.beste.pot | chpasswd
echo admin_2:fachrat.ist.beste.rat | chpasswd

