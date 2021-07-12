#!/bin/bash

echo "Enter the file name"
read -r file

sumOfSomething() {
    sum=0
    while IFS= read -r f
    do
        ((sum+=f))
    done < <("$@")
    echo "$sum"
}


echo "number of words"
sumOfSomething awk '{ print NF }' < "$file"

echo "number of characters"
sumOfSomething awk -F '' '{print NF-1}' < "$file"

echo "number of lines"
awk 'END { print NR }' "$file"

