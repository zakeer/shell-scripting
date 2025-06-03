#! /usr/bin/bash

echo "Number of arguments passed: $#"
if [ $# -ne 3 ]; then
    echo "Usage: $0 <number1> <operator> <number2>"
	echo "Operators: +, -, x, /"
	echo "Example: $0 10 + 3"
	exit 1    
fi

num1=$1
operator=$2
num2=$3

result=""

case "$operator" in
    "+")
       result=$((num1 + num2));;
    "-")
       result=$((num1 - num2));;
    "x")
       result=$((num1 * num2));;
    "/")
       result=$((num1 / num2));;
    *)
       echo "Error invalid operator '$operator'. Use +, -, x, /"
       exit 1
       ;;
esac

echo "Result: $num1 $operator $num2 = $result"
exit 0
