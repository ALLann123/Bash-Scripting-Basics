#!/usr/bin/bash


echo month-{1..255}

echo 192.168.100.{1..255}\n


#now to print on a new line

ip_range=$(echo 192.168.100.{1..10} | xargs -n1)

echo "$ip_range"

