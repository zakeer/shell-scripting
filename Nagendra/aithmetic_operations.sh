#!/usr/bin/bash

# Example 1: Basic arithmetic using $(( ))
a=10
b=5
echo "Addition: $((a + b))"
echo "Subtraction: $((a - b))"
echo "Multiplication: $((a * b))"
echo "Division: $((a / b))"
echo "Modulus: $((a % b))"

# Example 2: Using expr command
sum=$(expr $a + $b)
echo "Using expr - Sum: $sum"

# Example 3: Storing arithmetic result in a variable
result=$(( (a + b) * 2 ))
echo "Result of (a + b) * 2 is: $result"

# Example 4: Increment and Decrement
counter=5
((counter++))
echo "After increment: $counter"
((counter--))
echo "After decrement: $counter"

