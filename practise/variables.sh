#! /usr/bin/bash

echo "Provide provide two values x and y"
read -p "X=" x
read -p "Y=" y

echo "$x + $y = $((x / y))"