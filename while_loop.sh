#!/usr/bin/env bash

read -p "Enter a number>> " number

while [[ $num -lt 10 ]]; do
	echo "${num}"
	num=$(( $num + 1 ))
done