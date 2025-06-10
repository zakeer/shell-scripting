#!/usr/bin/bash

# Example 1: if statement
number=10
if [ $number -gt 5 ]; then
  echo "The number is greater than 5"
fi

# Example 2: if-else statement
echo "Enter a number:"
read num
if [ $num -eq 0 ]; then
  echo "Zero"
else
  echo "Not Zero"
fi

# Example 3: if-elif-else
echo "Enter your marks:"
read marks
if [ $marks -ge 90 ]; then
  echo "Grade: A"
elif [ $marks -ge 75 ]; then
  echo "Grade: B"
elif [ $marks -ge 50 ]; then
  echo "Grade: C"
else
  echo "Grade: Fail"
fi

# Example 4: Nested if
echo "Enter a number:"
read x
if [ $x -gt 0 ]; then
  if [ $x -lt 100 ]; then
    echo "Number is between 1 and 99"
  else
    echo "Number is greater than 100"
  fi
else
  echo "Number is 0 or negative"
fi