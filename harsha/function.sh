#! /usr/bin/bash
# Define a function to greet the user
greet() {
    echo "Hello, $1! Welcome to the shell scripting tutorial."
}

# Define a function to add two numbers
add() {
    sum=$(( $1 + $2 ))
    echo "Sum of $1 and $2 is: $sum"
}

# Define a function to check if a number is even or odd
check_even_odd() {
    if (( $1 % 2 == 0 )); then
        echo "$1 is even."
    else
        echo "$1 is odd."
    fi
}

# Call the functions
greet "Praharsha"

add 15 25

check_even_odd 11
