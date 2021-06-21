#!/bin/bash

echo "Enter a string"
read -r str
len=${#str}

count=0

while [ "$len" -ge 1 ]
do
    char=$(echo "$str" | cut -c "$len" | tr [a-z] [A-Z])
    ((len--))
    case "$char" in
        'A'|'E'|'I'|'O'|'U') ((count++)) ;;
    esac
done

echo "Total number of vowels = $count"

