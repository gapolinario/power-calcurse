#!/bin/bash

form="## %a %d"

for i in `seq 97 461`
do
	future="+""$i"" day"
	if [ $(date +%d --date="$future") = 01 ]
	then
		echo ""
		date +"# %B" --date="$future"
	fi

	if [ $(date +%w --date="$future") = 0 ]
	then
		echo ""
		date +"### Week %U" --date="$future"
	fi

	echo ""
	date +"$form" --date="+""$future"
	echo ""
	dow=$(date +"%a" --date="$future")
	cat "/home/gabriel/Dropbox/Jots/Week/$dow.md"
done
