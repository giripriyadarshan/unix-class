#!/bin/bash

echo "Enter a number"
read -r n

len=${#n}

echo "digits in odd position are"

i=1
while [ "$i" -le "$len" ]
do
	a=$(echo "$n" | cut -c "$i")
	echo -n "$a "
	i=$((i+2))
done

printf "\n"
