#!/usr/bin/env bash

read -p "Enter the Routers IP>> " router_ip    #used to get user input
     

subnet="${router_ip%.*}"    #used to remove the last three digits 

#echo "${subnet}"

for i in {1..255} ; do
	echo "$subnet.$i" >> ips.txt                #we use a for loop to ping the subnet
done

echo "Subnet generation done, check ips.txt"