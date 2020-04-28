#!/bin/bash

sudo wget -nc -P ~/Downloads https://inductions.delta.nitt.edu/sysad-task1-position.log

d=$(date +"%y-%m-%d")
egrep "$d" ~/Downloads/sysad-task1-position.log > ~/Documents/tdspos.txt
egrep 'Army' ~/Documents/tdspos.txt > ~/Documents/temp.txt

c=1
while [ $c -le 50 ]
do

egrep "Army$c " ~/Documents/temp.txt | sed 's/-/ /3' | cut -d " " -f 1,5,6 > /home/Army$c/tpos.txt
(( c++ ))

done 

egrep 'Navy' ~/Documents/tdspos.txt > ~/Documents/temp.txt

c=1
while [ $c -le 50 ]
do

egrep "Navy$c " ~/Documents/temp.txt | sed 's/-/ /3' | cut -d " " -f 1,5,6 > /home/Navy$c/tpos.txt
(( c++ ))
done 

egrep 'AirForce' ~/Documents/tdspos.txt > ~/Documents/temp.txt

c=1
while [ $c -le 50 ]
do

egrep "AirForce$c " ~/Documents/temp.txt | sed 's/-/ /3' | cut -d " " -f 1,5,6 > /home/AirForce$c/tpos.txt
(( c++ ))

done

 








    
