#!/bin/bash

read -p "Enter the radius of the circle: " -r radius

area=$(echo "scale=2 ; 3.14 * ($radius * $radius)" | bc)
circumference=$(echo "scale=2 ; 3.14 * 2 * $radius" | bc)

echo "area = $area"
echo "circumference = $circumference"
