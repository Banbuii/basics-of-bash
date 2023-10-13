#!/bin/bash

# Get number of profiles to be generated
echo -n -e "How many profiles?: "
read numUsers

usersName=hero
usersGroup=${usersName}es
usersHome=/home/$usersGroup

groupadd $usersGroup
mkdir -p $usersHome

chmod o-r /
chmod 775 /home/
chmod 770 /home/admins/

feedbackFolder=$usersHome/feedback
mkdir $feedbackFolder
chmod 777 $feedbackFolder
#touch $usersHome/feedback.txt
#chown root:$usersGroup $usersHome/feedback.txt
#chmod g+w $usersHome/feedback.txt

count=0
until [ $count -ge $numUsers ]; do
	# Generate name
	currentUser=$(printf "${usersName}_%03d\n" $count)

	let count+=1

	# Display feedback
	progress=$(printf "\rGenerating [%3d/$numUsers]" $count)
	echo -n "$progress"

	# Add user and password
	useradd $currentUser -s /bin/bash -g $usersGroup -b $usersHome -m -N
	usermod -a -G $usersGroup $currentUser
	echo $currentUser:$currentUser | chpasswd

	# Copy preset files
       	cp -rf /home/admins/scripts/user_folder_template/. $usersHome/$currentUser

	# Set permissions
	chmod 770 $usersHome/$currentUser 
	chown -R $currentUser:admins $usersHome/$currentUser 
done

echo ""
echo "Created $numUsers accounts"

