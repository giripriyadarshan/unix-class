#!/bin/bash

echo "Enter directory name"
read -r dir
if [ -d "$dir" ]
then
    cd "$dir" 
    ls > f
    exec < f
    while read -r line
    do 
        if [ -f "$line" ]
        then
            if [ -r "$line" ] && [ -w "$line" ] && [ -x "$line" ]
            then
                echo "$line has all permissions"
            fi
        fi
    done
fi
