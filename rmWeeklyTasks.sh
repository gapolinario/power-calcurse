#!/bin/bash

# for tests
#folder="."

folder=$(less folders)

input="$folder/apts"

startdate="$1"
enddate="$2"

# Remove all automatic (* marked) tasks within a specified interval

# to remove a line with *:
# sed '/\*/d' $input
# or with:
# gawk '!/\|\*/' apts

gawk -v sd=$1 -v ed=$2 '/\|\*/ { if ( $1 < sd || $1 > ed ) print $0 }' apts > $input
