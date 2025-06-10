#!/usr/bin/bash

# Example 1: Basic function definition and call
greet() {
  echo "Hello from the greet function!"
}

greet

# Example 2: Function with parameters
greet_person() {
  echo "Hello, $1!"
}

greet_person "Rahman"
greet_person "Shell Scripter"

# Example 3: Function that returns a value using echo
add_numbers() {
  local sum=$(( $1 + $2 ))
  echo $sum
}

result=$(add_numbers 5 10)
echo "Sum is: $result"

# Example 4: Function scope demonstration
print_variable() {
  local var="inside"
  echo "Variable is $var inside function"
}

var="outside"
echo "Variable is $var outside function"
print_variable
echo "Variable is $var after function call"

# Example 5: Calling one function from another
outer_function() {
  echo "This is the outer function."
  inner_function
}

inner_function() {
  echo "This is the inner function."
}

outer_function
