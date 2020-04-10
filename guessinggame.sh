#!/usr/bin/env bash
# File: guessinggame.sh

files=$(ls | wc -l)

read -p "Guess no. of files in current directory: " input

function check {
	while [[ $input -ne $files ]] 
	do
		if [[ $input -gt $files ]]
		then 
			echo ""
			echo "Higher than actual value! Try again."
			read -p "Guess no. of files in current directory: " input
			echo ""
		else
			echo ""
			echo "Lower than actual value! Try again."
			read -p "Guess no. of files in current directory: " input
			echo ""
		fi
	done	
}

check

echo ""
echo "***********************************************************************************"
echo ""
echo "You guessed right no. of files: $input !"
echo ""
echo "***********************************************************************************"
echo ""
