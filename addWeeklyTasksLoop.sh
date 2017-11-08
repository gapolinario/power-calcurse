#!/bin/bash

input="/home/gabriel/Dropbox/Calendar/2017/weekly.md"
output="/home/gabriel/Dropbox/Calendar/2017/apts"

startdate="2017-11-10"
enddate="2017-11-20"

future="$startdate"
while true; do
	fullDate="$(date -R --date="$future")"
	shortDate="$(date +%m/%d/%Y --date="$future")"
	DOW="$(echo $fullDate | awk '{print $1}' | tr -d ,)"

	grep $DOW $input | awk -v sd=$shortDate -F "|" '{print sd" @ "$2" -> "sd" @ "$3"|"$4}' >> $output

	[ "$future" \< "$enddate" ] || break
	future=$( date +%Y-%m-%d --date "$future +1 day" )
done
