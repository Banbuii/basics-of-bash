#!/bin/sh

cowsay -f wizard "
Hello young hero!
See this beautiful treasure chest right here? You can't? Oh, try 'ls' !"

echo ">Input: "
read COMMAND
#if [ ${#COMMAND} -ne 1 ]
while [ ${#COMMAND} -ne 2 ] || [ $COMMAND != "ls" ]
do    
    echo "Sorry, thats not the right command, please try again."
    read COMMAND
done   
$COMMAND
echo "



"
sleep 1
cowsay -f wizard "hmm.."
sleep 0.5
cowsay -f wizard "I can't seem to open it, can you help me? Use 'bash treasurechest' to open the chest."

echo ">Input: "
read COMMAND ARGUMENT
while [ ${#COMMAND} -ne 4 ] || [ ${#ARGUMENT} -ne 13 ] || [ $COMMAND != "bash" ] || [ $ARGUMENT != "treasurechest" ]
do   
    echo "Sorry, thats not the right command, please try again."
    #echo ${#ARGUMENT}
    #echo $ARGUMENT
    read COMMAND ARGUMENT
done   
$COMMAND $ARGUMENT
echo "



"
sleep 1
cowsay -f wizard "
.."
sleep 0.5
cowsay -f wizard "... 
........"
sleep 0.5
cowsay -f wizard "Oooooooh so you need the KEY! THAT's what that thing was for.. dammit."
sleep 0.5
cowsay -f wizard "Why young hero, I may have given the key to someone living deep in the dark forest.. you will find them by searching after an ominous glowing door. Behind that door, you shall find them."
sleep 0.5
cowsay -f wizard "When you find them, they will give you the key to the chest! 

Not even I know, what's inside the chest, but I am quite sure it will be awesome!"
