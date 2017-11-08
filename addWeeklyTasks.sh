#!/bin/bash

input="/home/gabriel/Dropbox/Calendar/2017/weekly.md"
output="/home/gabriel/Dropbox/Calendar/2017/apts"

for i in `seq 1 21`
do
	future="+""$i"" day"
	fullDate="$(date -R --date="$future")"
	shortDate="$(date +%m/%d/%Y --date="$future")"
	DOW="$(echo $fullDate | awk '{print $1}' | tr -d ,)"
	
	grep $DOW $input | awk -v sd=$shortDate -F "|" '{print sd" @ "$2" -> "sd" @ "$3"|"$4}' >> $output
done


