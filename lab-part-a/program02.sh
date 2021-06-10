#!/bin/bash

echo "Enter a string"

read -r str
len=${#str}
echo "$len"

rev=""

while [ "$len" -ge 1 ]
do
	rev=$(echo "$str" | cut -c "$len") 
	rev1=${rev1}${rev} 
	len=$((len-1))
done

echo reverse of "$str" = "$rev1"

if [ "$str" = "$rev1" ]
then
	echo it is palindrome
else
	echo it is not a palindrome
fi

