#!/bin/sh

cat .wizard.txt
echo "
Hello young hero!
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
echo "Oooooooh so you need the KEY! THAT's what that thing was for.. dammit."
echo "Why young hero, I may have given the key to someone living deep in the dark forest.. you will find them by searching after an ominous glowing door. Behind that door, you shall find them."

echo "When you find them, they will give you the key to the chest!"
echo "Not even I know, what's inside the chest, but I am quite sure it will be awesome!"
