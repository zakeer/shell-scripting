#!/usr/bin/bash

# Basic variable assignment
name="Rahman"
echo "My name is $name" #Output: My name is Rahman

# Arithmetic with variables
a=10
b=20
sum=$((a + b))
echo "Sum of $a and $b is: $sum" #Output: Sum of 10 and 20 is: 30

# Reading user input into a variable
echo "Enter your age:"
read age
echo "You are $age years old."
read -p "Enter your name: " name
echo "Your name is $name"

# Concatenating strings
first="Shell"
second="Scripting"
combined="$first $second is powerful!"
echo $combined
