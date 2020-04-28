#!/bin/bash

sudo wget -nc -P ~/Downloads https://inductions.delta.nitt.edu/sysad-task1-attendance.log

d=$(date +%y-%m-%d)
egrep "$d" ~/Downloads/sysad-task1-attendence.log > ~/Documents/todayAtt.txt
egrep "Army" ~/Documents/todayAtt.txt > ~/Documents/todayAttArmy.txt
egrep "YES" ~/Documents/todayAttArmy.txt | sed 's/-/ /3' | cut -d " " -f 3,4 > /home/ArmyGeneral/att$d.txt

egrep "AirForce" ~/Documents/todayAtt.txt > ~/Documents/todayAttAirForce.txt
egrep "YES" ~/Documents/todayAttNavy.txt | sed 's/-/ /3' | cut -d " " -f 3,4 > /home/NavyMarshal/att$d.txt

egrep "AirForce" ~/Documents/todayAtt.txt > ~/Documents/todayAttAirForce.txt
egrep "YES" ~/Documents/todayAttAirForce.txt | sed 's/-/ /3' | cut -d " " -f 3,4 > /home/AirForceChief/att$d.txt


