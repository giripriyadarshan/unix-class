#!/bin/bash

echo "Enter a string"
read -r str

echo "Enter the character to count"
read -r ch

count=$(echo "$str" | grep -o "[ ${ch,,} | ${ch^^} ]" | wc -l )

echo "Total number of $ch  = $count"

