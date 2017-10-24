#!/bin/bash

input="~/Dropbox/Calendar/recurring.md"

# PSEUDO CODE 2
# FOR EACH DAY IN THE WEEK (MON, FOR INSTANCE)
# 	GREP MON
# 	CONVERT ALL MONDAY LINES TO CALCURSE FORMAT WITH AWK (PER LINE OPERATION)
# 	ADD THOSE APPOINTMENTS
#
# NOTICE THAT `date -R` IS STANDARD, hence it is always in English

for i in `seq 1 10`
do
	future="+""$i"" day"
	fullDate="$(date -R --date="$future")"
	DOW="$(echo $fullDate | awk '{print $1}' | tr -d ,)"
	
	grep $DOW $input
done

#grep $DOW $input

# for i in `seq 1 10`
# do
# 	future="+""$i"" day"
# 
# 	# first day of month
# 	if [ $(date +%d --date="$future") = 01 ]
# 	then
# 		# add monthly tasks
# 	fi
# 
# 	# first day of week
# 	if [ $(date +%w --date="$future") = 1 ]
# 	then
# 		# add weekly tasks
# 	fi
# done
