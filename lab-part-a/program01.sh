#!/bin/bash

echo "enter 2 numbers"
read -r low
read -r high
echo "prime numbers between $low and $high is"

while [ "$low" -lt "$high" ]
do
	flag=0
    lo=$((low/2))
	for((i=2;i <= lo; i++))
	do
        if [ $((low%i))  -eq 0 ]
		then
			flag=1
			break
		fi
	done

	if [ $flag -eq 0 ]
	then
		echo "$low"
	fi
    low=$((low+1))
done
