#!/bin/bash

echo "Enter a number"

read -r num

fact=1

while [ "$num" -ge 1 ] ; do
	fact=$((fact * num))
	num=$((num - 1))
done

echo Factorial = "$fact"
