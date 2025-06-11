#! /usr/bin/bash


****** CALCULATOR ******

read -p " Enter The Value :" x
read -p " Enter The VAlue :" y
read -p " Perform operation add | subtract | multipication | division =" operation

if [ "$operation" = "add" ]; then
    result=$((x + y))
elif [ "$operation" = "subtract" ]; then
    result=$((x - y))
elif [ "$operation" = "multiplication" ]; then
    result=$((x * y))
elif [ "$operation" = "division" ]; then
    result=$((x / y))
else
    result="Unknow operation"
fi

echo $result