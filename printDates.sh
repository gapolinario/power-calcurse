#!/bin/bash
# These dates are in YYYY-MM-DD format
# take a look at this:
# https://stackoverflow.com/questions/15621409/print-dates-in-date-range-linux

startdate="2013-03-15"
enddate="2013-04-15"

form='# %a %d %b'

formatdate () {
	date +"$form" --date="$1"
}

curr="$startday"
while true; do
    formatdate $curr
    [ "$curr" \< "$enddate" ] || break
    curr=$( date +'%Y-%m-%d' --date "$curr +1 day" )

done