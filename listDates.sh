#!/bin/bash
# call with:
# bash listDates.sh > path/to/file

for i in `seq 1 150`
do
	future="+""$i"" day"
	fullDate="$(date +'# %a, %d %b' --date="$future")"

        echo $fullDate
	
done


