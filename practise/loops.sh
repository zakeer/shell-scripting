#!/usr/bin/bash

echo "=== FOR loop ==="
for i in 1 2 3 4 5
do
    echo "For loop iteration: $i"
done

echo ""
echo "=== WHILE loop ==="
count=1
while [ $count -le 5 ]
do
    echo "While loop count: $count"
    ((count++))
done

echo ""
echo "=== UNTIL loop ==="
count=1
until [ $count -gt 5 ]
do
    echo "Until loop count: $count"
    ((count++))
done





