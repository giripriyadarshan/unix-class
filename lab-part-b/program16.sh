#!/bin/bash

echo demonstration of grep command
echo "-------------"
echo enter the file name
read -r  fname

echo "CASE SENSITIVE SEARCH"
grep "UNix" "$fname"
echo

echo "COUNTING NUMBER OF MATCHES"
grep -c "unix" "$fname"
echo

echo "DISPLAY FILE NAME THAT MATCHES PATTERN"
grep -l "unix" ./*
echo

echo "DISPLAY ONLY MATCHED PATTERN"
grep -o "unix" "$fname"
