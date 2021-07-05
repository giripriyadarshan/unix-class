#!/bin/bash

echo 1.gzip
echo 2.gunzip
echo 3.exit
echo
echo enter your choice:
read -r ch
case $ch in
    1)echo enter file to be compressed
        read -r file
        gzip "$file"
        echo the file has been compressed
        ls -l;;
    2)echo enter the file to be uncompressed
        read -r file
        gunzip "$file"
        echo the file has been uncompressed
        ls -l;;
    3)exit
esac
