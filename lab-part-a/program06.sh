#!/bin/bash

copyFiles() {
    echo "enter the source"
    read -r fname1
    echo "enter destination"
    read -r fname2
    if [ "$1" -eq 2 ] && [ ! -d "$fname2" ]
    then
        echo "Entered path is not a directory"
    else
        cp "$fname1" "$fname2"
    fi
}

ans="y"
while [ "$ans" != "n" ]
do
    clear
    echo "Menu options"
    echo "1. Copy a content of a file to another file"
    echo "2. Copy a file from one directory to another"
    echo "Enter a choice"
    read -r ch
    case "$ch" in
        1) copyFiles 1;;
        2) copyFiles 2;;
    esac
    read -p "Do you want to continue? y/n: " -r ans
done

