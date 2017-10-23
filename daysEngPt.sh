#!/bin/bash
# In case of emergency, replace all days of the week in portuguese with days of the week in english, adding
# a case or if statement and a prompt for input would be ideal

# PTBR to English
sed -i "s/Seg/Mon/g" ~/Dropbox/Jots/Agenda2017.md
sed -i "s/Ter/Tue/g" ~/Dropbox/Jots/Agenda2017.md
sed -i "s/Qua/Wed/g" ~/Dropbox/Jots/Agenda2017.md
sed -i "s/Qui/Thu/g" ~/Dropbox/Jots/Agenda2017.md
sed -i "s/Sex/Fri/g" ~/Dropbox/Jots/Agenda2017.md
sed -i "s/Sab/Sat/g" ~/Dropbox/Jots/Agenda2017.md
sed -i "s/Dom/Sun/g" ~/Dropbox/Jots/Agenda2017.md

# English to PTBR
sed -i "s/Sun/Dom/g" ~/Dropbox/Jots/Agenda2017.md
sed -i "s/Mon/Seg/g" ~/Dropbox/Jots/Agenda2017.md
sed -i "s/Tue/Ter/g" ~/Dropbox/Jots/Agenda2017.md
sed -i "s/Wed/Qua/g" ~/Dropbox/Jots/Agenda2017.md
sed -i "s/Thu/Qui/g" ~/Dropbox/Jots/Agenda2017.md
sed -i "s/Fri/Sex/g" ~/Dropbox/Jots/Agenda2017.md
sed -i "s/Sat/Sab/g" ~/Dropbox/Jots/Agenda2017.md
