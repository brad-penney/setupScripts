#!/bin/bash

while read user ;
do
	if [[ $(cat /etc/passwd | grep $user | wc -l) > 0 ]]; then
           echo "User $user exists"
	else
		useradd -m $user
		echo "User $user created"
	fi
done <userList.csv
