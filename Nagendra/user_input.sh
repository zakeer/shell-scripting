#!/usr/bin/bash

# Example 1: Reading a single value
echo "Enter your name:"
read name
echo "Hello, $name!"

# Example 2: Reading multiple values
echo "Enter two numbers separated by space:"
read num1 num2
echo "You entered $num1 and $num2"

# Example 3: Reading input silently (e.g., for passwords)
echo "Enter your password (input will be hidden):"
read -s password
echo -e "\nPassword received."

# Example 4: Using -p option to prompt in the same line
read -p "Enter your favorite programming language: " lang
echo "You like $lang."

# Example 5: Confirming user input
read -p "Do you want to continue? (y/n): " answer
if [ "$answer" = "y" ] || [ "$answer" = "Y" ]; then
  echo "Continuing..."
else
  echo "Exiting..."
  exit 1
fi
