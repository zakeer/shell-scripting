#!/usr/bin/bash

# Example 1: Accessing command line arguments
echo "Script name: $0"
echo "First argument: $1"
echo "Second argument: $2"
echo "All arguments: $@"
echo "Total number of arguments: $#"

# Example 2: Looping through all arguments
echo "Looping through arguments:"
for arg in "$@"
do
  echo "Argument: $arg"
done

# Example 3: Checking if required arguments are provided
if [ $# -lt 2 ]; then
  echo "Usage: $0 <arg1> <arg2>"
  exit 1
fi

# Example 4: Using arguments in calculations
a=$1
b=$2
sum=$((a + b))
echo "Sum of $a and $b is: $sum"

