#!/bin/bash

sum=0
function using_loop(){
    while [ "$n" -ne 0 ]
    do
        sum=$((sum+n%10))
        n=$((n/10))
    done
}

function using_recursive() {
    if [ "$n" -ne 0 ] 
    then
        sum=$((sum+n%10))
        n=$((n/10))
        using_recursive
    fi
}

echo "Enter a number"
read -r n

echo "How do you want to calculate the sum of digits?"
echo "1: using loop"
echo "2: using recursive function"

read -r ch

case "$ch" in
    1) using_loop ;;
    2) using_recursive ;;
esac

echo
echo -n "Sum of digits = "
echo "$sum"
