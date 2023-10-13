#!/bin/bash

usersHome=/home/heroes
numUsers=$(find $usersHome -mindepth 1 -maxdepth 1 -type d | wc -l)
current=$numUsers

for user in $(ls $usersHome); do
	#echo "Deleting $user..."
	
	progress=$(printf "\rDeleting [%03d/$numUsers]" $current)
	echo -n "$progress"

	let current-=1

	deluser $user >& /dev/null
done;

rm -rf $usersHome

echo ""
echo "Done"

