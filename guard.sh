#!/bin/sh

echo "Stop right there adventurer!"
echo "State your name?"
echo "
		                 /-|                            ____
		               ___  \\                          /|  |\\
                          ____|  /|--]                        /||  \\||
		              | / |__|                        ||/   \\|\\
		               \\ /.\\ |                       /|/     \\|\\
		                '|| ||                       ||      _\\||
		                <_'<_'                      /||     /##||\\
"
echo "Input: "

read NAME
echo "Ugh... my job as a guard is already tiring but you had to show up and give me all this extra work. But I'll take a look...

"

if [ 8 -gt 9 ]
   then
       echo "I can't find $NAME on my list and thus can not let you pass."
       echo "Hahaha, if you wanted to pass you should have made sure you get permission beforehand... AND NOW: SCRAM!"
   else
       echo "WHAT? HOW? How did you get permission? Well you may go into the dungeon and I'll make sure to remember this name... $NAME..."
fi





# Rouge dialog
# there seems to be a magic force that prevents many from entering... I wonder what the other did to permission to enter.





# Stop there adventurer!
# State your name?
#$x <- Input
#Ugh... you know my job as a guard is already difficult enough but you only give me extra work.
#$if denied
#	I can't find $x on my list and thus can not let you pass. 
#	Hahaha, if you wanted to pass you should have made sure you get permission... AND NOW: SCRAM!
#$if accepted
#	WHAT? HOW? How did you get permission? Well you may go into the dungeon but make sure to not bother me again.




