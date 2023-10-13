#!/bin/bash

for admin in $(ls /home/admins); do
	echo "Deleting $admin..."
	deluser $admin
	rm -vrf /home/admins/$admin
done;

