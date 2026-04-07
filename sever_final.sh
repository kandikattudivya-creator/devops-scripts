#!/bin/bash

servers=("google.com" "git.com" "g1pp24.com")

for server in "${servers[@]}"
do
	ping -c 1 -W 2 $server > /dev/null 2>&1

if [ $? -eq 0 ]
then
	echo "$server is up"
 else
	echo "$server is down"
fi

done


