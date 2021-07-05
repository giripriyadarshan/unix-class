#!/bin/bash

echo "Enter a single character please"
read -r char
case $char in
    [A-Z]) echo "You entered a Capital letter" ;;
    [a-z]) echo "You entered a lowercase letter" ;;
    [0-9]) echo "You entered a digit" ;;
    ?) echo "Your entered a special symbol" ;;
    *) echo "you entered more than one character " ;;
esac
