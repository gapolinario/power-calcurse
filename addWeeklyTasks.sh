#!/bin/bash

folder=$(less folders)

# for tests
#folder="."

input="$folder/weekly.md"
output="$folder/apts"

startdate="$1"
enddate="$2"

future="$startdate"
while true; do
	fullDate="$(date -R --date="$future")"
	shortDate="$(date +%m/%d/%Y --date="$future")"
	DOW="$(echo $fullDate | awk '{print $1}' | tr -d ,)"

	grep $DOW $input | awk -v sd=$shortDate -F "|" '{print sd" @ "$2" -> "sd" @ "$3"|"$4}' >> $output
	#grep $DOW $input | awk -v sd=$shortDate -F "|" '{print sd" @ "$2" -> "sd" @ "$3"|"$4}'

	[ "$future" \< "$enddate" ] || break
	future=$( date +%Y-%m-%d --date "$future +1 day" )
done
