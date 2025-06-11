#! /usr/bin/bash
 


read -p "enter x value =" x
read -p "enter y value =" y
if [ $x -gt  $y ]; then
    echo " x value is greater than y"
else 
    echo " y value is  greater than x"
fi