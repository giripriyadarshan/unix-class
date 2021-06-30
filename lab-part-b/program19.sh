#!/bin/bash

echo "enter the file name"
read -r fname
if [ -e "$fname" ]
then
    echo "$fname exists and its attributes are: "
    ls -l "$fname"
else
    echo "$fname does not exist"
fi
