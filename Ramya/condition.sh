#! /usr/bin/bash

echo "no of arguments: $#"
if [ $# -eq 3 ]; then
num1=$1
op=$2
num2=$3
    else
    echo "enter arguments: <number1> <operator> <number2>"
    echo "operators = - , + ,* , /"
    echo "example: $@ 10 + 5"
fi

result=""
case "$op" in
     "+")
        result=$((num1+num2));;
    "-")
        result=$((num1-num2));;
    "x")
        result=$((num1*num2));;
    "/")
        result=$((num1/num2));;
    "*")
    echo"enter operators like +,-,/,* "
esac
 echo " result of $1 $2 $3  = $result"
      




        