#!/bin/bash

echo "Program name = $0"
echo "number of arguments = $#"
echo "all arguments = $*"

echo "lines with patterns $1 in $2"
grep "$1" "$2"

