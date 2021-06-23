#!/bin/bash

echo "Enter a number"
read -r n

i=0

function oddoreven() {
    i=$1
    while [ "$i" -le "$n" ]
    do
        echo "$i"
        ((i+=2))
    done
}

echo odd numbers are:
oddoreven 1

echo even numbers are:
oddoreven 2

