#!/usr/bin/bash

# Example 1: break in a for loop
echo "Using break in a for loop:"
for i in {1..10}
do
  if [ $i -eq 5 ]; then
    echo "Breaking at i = $i"
    break
  fi
  echo "Value: $i"
done

echo ""

# Example 2: continue in a for loop
echo "Using continue in a for loop:"
for i in {1..5}
do
  if [ $i -eq 3 ]; then
    echo "Skipping i = $i"
    continue
  fi
  echo "Value: $i"
done

echo ""

# Example 3: break in a while loop
echo "Using break in a while loop:"
count=1
while [ $count -le 10 ]
do
  if [ $count -eq 6 ]; then
    echo "Breaking at count = $count"
    break
  fi
  echo "Count: $count"
  ((count++))
done

echo ""

# Example 4: continue in a while loop
echo "Using continue in a while loop:"
count=0
while [ $count -lt 5 ]
do
  ((count++))
  if [ $count -eq 2 ]; then
    echo "Skipping count = $count"
    continue
  fi
  echo "Count: $count"
done
