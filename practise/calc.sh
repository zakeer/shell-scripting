#! /usr/bin/bash

echo "--- Calculator ---"
read -p "Provide x value =" x
read -p "Provide y value =" y
read -p "Perform opertion add | minus | multiply | divide =" operation

echo "x=$x"
echo "y=$y"
echo "operation=$operation"

result=""

if [ "$operation" = "add" ]; then
    result=$((x + y))
elif [ "$operation" = "minus" ]; then
    result=$((x - y))
elif [ "$operation" = "multiply" ]; then
    result=$((x * y))
elif [ "$operation" = "divide" ]; then
    result=$((x / y))
else
    result="Unknow operation"
fi

echo $result

#example :- 2

echo "--- find big number ---"
read -p "Provide x value =" x
read -p "Provide y value =" y

echo "x=$x"
echo "y=$y"

result=""

if [ x -gt y] ; then
    result="$x"
elif [ x -lt y] ; then
    return="$y"
elif [ x -eq y] ; then
    result="both are equal"
fi

echo $result

