#!/bin/bash

for i in `seq 1 10`
do
	future="+""$i"" day"

	# first day of month
	if [ $(date +%d --date="$future") = 01 ]
	then
		# add monthly tasks
	fi

	# first day of week
	if [ $(date +%w --date="$future") = 1 ]
	then
		# add weekly tasks
	fi
done
