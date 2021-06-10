#!/bin/bash

function userinput() {
	opt="y"
	while [ "$opt" != "n" ]
	do
		echo "Enter data for $1.txt"
		read -r x
		echo "$x" >> "$1".txt
		echo press y to continue / n to stop appending "$1"
		read -r opt
	done
}

userinput file1
userinput file2

while true
do
	echo "Menu driven program"
	echo "1: cmp"
	echo "2: uniq"
	echo "3: comm"
	echo "4: exit"
	read -p "Enter your choice: " -r ch
	clear
	case $ch in
		1) echo "Enter file1 name"
			read -r f1
			echo "Enter file2 name"
			read -r f2
			cmp "$f1" "$f2" ;;
		2) echo "Enter file name"
			read -r f1
			sort "$f1" | uniq ;;
		3) echo "Enter file1 name"
			read -r f1
			echo "Enter file2 name"
			read -r f2
			comm "$f1" "$f2" ;;
		4) exit ;;
		*) echo "Command not found"
	esac
done
