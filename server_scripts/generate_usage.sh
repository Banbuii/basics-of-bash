#!/bin/bash

# Maximum seconds a client sleeps between executions; exclusive
maxSleepTime=6

# TODO: Add function to cd/ls/tree into random directory
dirs=$(find $HOME -type d)

# TODO: Add function to cat random .txt file
texts=$(find $HOME -iname '*.txt')

commands=("tree $HOME/kings_castle" \
"cd $HOME" \
"cat $HOME/kings_castle/cellar/dungeons.txt" \
"cat $HOME/.wizard.txt" \
"tree $HOME/dark_forest" \
"find $HOME -iname '*.sh' -print")

size=${#commands[@]}

while true
do
	rnd=$[$RANDOM % $maxSleepTime]
	sleep $rnd

	index=$(($RANDOM % $size))
	echo "${commands[$index]}"
 	eval "${commands[$index]}"
done





