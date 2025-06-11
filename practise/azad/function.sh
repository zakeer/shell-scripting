#! /usr/bin/bash 

function_sum(){
    echo "The Sum Is :" $(( $1 + $2 ))
}
function_sum 12 14


function_diff(){
    echo "The Difference Is :" $(( $1 - $2 ))
}
function_diff 14 7


function_pro(){
    echo "The Product Is :" $(( $1 * $2 ))
}
function_pro 7 14


function_div(){
    echo "The Quotient Is :" $(( $1 / $2 ))
}
function_div 14 7


function_rem(){
    echo "The Remainder Is :" $(( $1 % $2 ))
}
function_rem 14 3
