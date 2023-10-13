#!/bin/sh

cat .wizard.txt
echo "
Hello young hero! I am the mighty Installation Wizard!
See this beautiful treasure chest right here? You can't? Oh, try 'ls' !
Input: "
read COMMAND
while [ $COMMAND != "ls" ]
do    
    echo "sorry, thats not the right command, please try again."
    read COMMAND
done   
$COMMAND
echo "



"
cat .wizard.txt
echo "hmm..
I can't seem to open it, can you help me? Use 'bash treasurechest' to open the chest."
read COMMAND ARGUMENT
while [ $COMMAND != "bash" ] || [ $ARGUMENT != "treasurechest" ]
do   
    echo "sorry, thats not the right command, please try again."
    read COMMAND ARGUMENT
done   
$COMMAND $ARGUMENT
echo "



"
cat .wizard.txt 
echo ""
echo "."
echo "..
........"
echo "oh so you need the key! THAT's what that thing was for.. dammit."
echo "Why young hero, I may have given the key to someone living deep in the dark forest.. you will find them by searching after an ominous glowing door."

echo "when you find them, they will give you the key to the chest!"
