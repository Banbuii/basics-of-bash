#!/bin/bash
# need root prvileges

# compile scripts - gcc needs to be installed
# FIXME: Permissions?
gcc -s -o tell_wizzard tell_wizzard.c
gcc -s -o wizzards_ear wizzards_ear.c
ln -sv /usr/bin/tell_wizzard ./tell_wizzard

# add service
cp -v wizzard.service /etc/systemd/system
systemctl enable wizzard.service
systemctl start wizzard.service
chmod 666 /tmp/ear

# Add files for logs
# FIXME: Permissions?
logDir=/var/log/wizzard
mkdir -v $logDir
touch $logDir/log1.log
touch $logDir/log2.log
chmod 666 $logDir/*	

# make group
groupadd wizzards_approval

