#!/bin/bash

echo "Enter a number"
read -r n

# First Number of the
# Fibonacci Series
a=0

# Second Number of the
# Fibonacci Series
b=1

echo "The Fibonacci series is : "

for (( i=0; i<n; i++ ))
do
	echo -n "$a "
	fib=$((a + b))
	a=$b
	b=$fib
done

echo 
