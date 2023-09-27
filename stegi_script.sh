#!/bin/bash

echo "Do you want to knock at the door? [Y/n]"
read BOOL
if [ $BOOL = "n" ]
then
    echo "Well, you didn't knock, so nothing happens.."
else 
    echo "Behind the door you can here heavy footsteps and a bit of scuttling.
Then the door opens:
"
    cowsay -f stegosaurus "Hello youngling, what brings you here in this dark forest?"
    echo "(type your answer)"
    read ANSWER
    cowsay -f stegosaurus "Ah $ANSWER.... that makes sense. I'd really like to give you the key, as I don't have any use for it, but I don't have it anymore. 
I gave it to the king, and he put it somewhere in his castle.

I can't tell you exactly where he put it, but I can tell you what the key looked like, maybe that will help you.. 

The key is a tiny blue key with 5 hubbles."
    cowsay -f stegosaurus "Farewell now youngling, I need to continue baking my applepie."
fi