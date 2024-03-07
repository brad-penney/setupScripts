#!/bin/bash

while read group ;
do
	if [[ $(cat /etc/group | grep $group | wc -l) > 0 ]]; then
           echo "Group $group exists"
	else
		groupadd $group
		echo "Group $group created"
	fi
done <groupList.csv

while read devs ;
do
	usermod -aG developers $devs
done <developers.csv


while read tests ;
do
	usermod -aG testers $tests
done <testers.csv

while read prodS ;
do
	usermod -aG prodSupport $prodS
done <prodSupport.csv
