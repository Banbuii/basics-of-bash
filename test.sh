#!/bin/sh

cat .wizard.txt
echo "
Hello young hero!
See this beautiful treasure chest right here? You can't? Oh, try 'ls' !
Input: "
read COMMAND
#if [ ${#COMMAND} -ne 1 ]
while [ ${#COMMAND} -ne 2 ] || [ $COMMAND != "ls" ]
do    
    echo "sorry, thats not the right command, please try again."
    echo ${#COMMAND}
    read COMMAND
done   
$COMMAND