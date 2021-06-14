#!/bin/bash

echo "Files with read, write and execute permission for the user:"
echo "Enter the directory path"
read -r dir

if [ -d "$dir" ]
then

    for f in "$dir"/*
    do
        if [ -f "$f" ]
        then
            if [ -r "$f" ] && [ -w "$f" ] && [ -x "$f" ]
            then
                echo "$f has all permissions"
            fi
        fi
    done
fi
