#!/bin/sh

bash cleanup.sh

python3 dungeon_erzeugung.py
python3 wald_erzeugung.py
python3 huette_platzieren.py

cp -f ./wizard.cow /usr/share/cowsay/cows/