#!/bin/bash

ans="y"

while [ "$ans" != "n" ] 
do
	tput clear
	tput cup 1 5
	echo "Menu Option"
	tput cup 3 5
	echo "1. Date Command"
	tput cup 4 5
	echo "2. pwd command"
	tput cup 5 5
	echo "3. calendar command"
	tput cup 6 5
	echo "4. who command"
	tput cup 7 5
	echo "5. terminal type"
	tput cup 8 5
	echo "6. cp command"
	tput cup 9 5
	echo "7. cat command"
	tput cup 10 5
	echo "8. wc command"
	tput cup 11 5
	echo "9. calculator command"
	tput cup 12 5
	echo "10. list all files in home directory"
	tput cup 15 5

	read -r ch
	case "$ch" in 
		1) date ;;
		2) pwd ;;
		3) cal ;;
		4) who -H ;;
		5) tty ;;
		6) echo "enter the source of the file"
			read -r f1
			echo "enter the path to copy"
			read -r f2
			cp "$f1" "$f2" ;;
		7) echo "enter the source of the file"
			read -r catfile
			cat "$catfile" ;;
		8) echo "enter the source of the file"
			read -r wcfile
			wc "$wcfile" ;;
		9) bc ;;
		10) ls -a ~;;

		q) break ;;
		*) echo "invalid choice"

		esac

		echo; echo

		echo -n "Proceed? [y/n]: "
		read -r ans
	done
