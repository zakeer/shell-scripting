#!/usr/bin/bash

function run() {
    echo "One"
    echo "Two"
    echo "Three"
}
run
function add() {
    echo "Addition of $1 + $2 = $(($1 + $2))"
}  

add 23 45

name=$1

greet() {
    echo "Hello $1, welcome to bash scripting"
}

greet $name

minus() {
    result=$(($1-$2))
    return $result
}

minus 45 20
echo "The minus result $?"

today() {
    echo "Current date and time $(date)"
}

today


