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



