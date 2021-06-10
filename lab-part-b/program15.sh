#!/bin/bash

echo "Enter a number"
read -r n

i=1

while [ "$i" -le "$n" ]
do
	if [ $((i%2)) -eq 0 ]
	then
		echo even="$i"
	else
		echo "    odd=$i "
	fi
	((i++))
done
