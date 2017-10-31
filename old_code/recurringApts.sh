#!/bin/bash

file="/home/gabriel/Dropbox/Blog/Agenda/apts"

task="Release the Kraken"

today=$(date +"%m/%d/%Y")

printf "$today @ 09:00 -> $today @ 09:01|$task\n" >> $file

printf "Done\n"

