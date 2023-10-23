#!/bin/bash

if [ "$#" -ne 1 ] || [ -z "$1" ]
then
  echo "Path to the user_folder_template is missing"
  exit 1
fi

bash cleanup.sh

python3 dungeon_erzeugung.py $1
python3 wald_erzeugung.py $1
python3 huette_platzieren.py $1

cp -v ./.bashrc ./.hushlogin ./treasurechest ./quest_scripts/quest.sh $1

sudo cp -fv ./wizard.cow /usr/share/cowsay/cows/