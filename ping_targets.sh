#!/usr/bin/env bash

read -p "Enter file name>> " file


while IFS= read -r ip; do
	ping -c 1 -w 1 "$ip"&> /dev/null
	if [[ $? -eq 0 ]]; then
		echo "$ip is reacheble"
	else
		echo "$ip is unreacheble"
	fi
done < "$file"