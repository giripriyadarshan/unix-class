#!/bin/bash

opt='y'

while [ "$opt" != 'n' ]
do
    echo "Enter student number"
    read -r student_num
    echo "Enter student name"
    read -r student_name
    echo "Enter student age"
    read -r student_age
    echo "Enter student gender"
    read -r student_gender
    echo "Enter student weight"
    read -r student_weight
    echo "Enter student height"
    read -r student_height
    echo -e "$student_num\t$student_name\t$student_age\t$student_gender\t$student_weight\t$student_height" >> misc/program13_details.txt
    echo
    read -p "do you wish to continue? y/n? " -r opt
done

echo "Student Details"
echo "---------------"
echo -e "Number\tName\tage\tgender\tweight\theight"
echo
echo "------------------------------------------------------------"
awk '{printf $0 "\n"}' misc/program13_details.txt
echo "------------------------------------------------------------"
