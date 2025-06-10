#!/usr/bin/bash

# Example 1: for loop
echo "For loop example:"
for i in 1 2 3 4 5
do
  echo "Value: $i"
done

# Example 2: for loop using range
echo "For loop using range:"
for i in {1..5}
do
  echo "Number: $i"
done

# Example 3: while loop
echo "While loop example:"
count=1
while [ $count -le 5 ]
do
  echo "Count is $count"
  ((count++))
done

# Example 4: until loop
echo "Until loop example:"
counter=1
until [ $counter -gt 5 ]
do
  echo "Counter is $counter"
  ((counter++))
done

# Example 5: break and continue
echo "Loop with break and continue:"
for i in {1..5}
do
  if [ $i -eq 3 ]; then
    echo "Skipping 3"
    continue
  fi
  if [ $i -eq 5 ]; then
    echo "Breaking at 5"
    break
  fi
  echo "Value: $i"
done
