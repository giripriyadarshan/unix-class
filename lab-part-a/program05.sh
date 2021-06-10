#!/bin/bash

echo "Files with read, write and execute permission for the user:"

for f in *
do
	if [ -f "$f" ]
	then
		if [ -r "$f" ] && [ -w "$f" ] && [ -x "$f" ]
		then
			echo "$f"
		fi
	fi
done
