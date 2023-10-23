#!/bin/bash

echo "Do you want to knock at the door? [Y/n]"
read BOOL
sleep 0.5
if [ ${#BOOL} -ne 1 ] || [ $BOOL = "n" ]; then
    echo "Well, you didn't knock, so nothing happens.."
else 
    if ! test -f ./apple_pie.txt; then
        echo "Behind the door you can here heavy footsteps and a bit of scuttling.
        Then the door opens:
        "
        sleep 0.5
        cowsay -f stegosaurus "Hello youngling, what brings you here in this dark forest?"
        echo "(type your answer)"
        read ANSWER
        cowsay -f stegosaurus "Ah I see... so the mighty wizard sent you. I'd really like to give you the key, as I don't have any use for it, but I don't have it anymore. 
        I gave it to the king, and he put it somewhere in his castle.

        I can't tell you exactly where he put it, but I can tell you what the key looked like, maybe that will help you.. 

        The key is a tiny blue key with 5 hubbles. And I think he put it behind a red, round door made of wood."
        cowsay -f stegosaurus "Farewell now youngling, I need to start baking my apple pie, but I can't seem to find my recipe, so if you'll excuse me... I really can't remember where I put it..."
    else
        cowsay -f stegosaurus "Ohhh you brought my apple pie recipe! You truly are a hero! I searched for it so long, I thought I lost it. Thank you so much!"
        sleep 1
        cowsay -f stegosaurus "As a token of my gratidue, you well get a piece of the pie, once I finish baking."
        sleep 1
        echo "
        It starts to smell amazing.
        "
        sleep 1
        cowsay -f stegosaurus "Here you go! One freshly baked piece of cake."
        echo "You have obtained: Applepie. If you want a treat, tell the instructors, but dont spoil your fellow students"
        echo "         ("
        echo "          )"
        echo "     __..---..__"
        echo " ,-=\'  /  |  \  \`=-."
        echo "\:--..___________..--;"
        echo " \\.,_____________,./ "
    fi
fi