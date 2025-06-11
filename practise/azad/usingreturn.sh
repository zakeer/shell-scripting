#! /usr/bin/bash 


function_sum(){
    Sum=$(( $1 + $2 ))
    return $Sum
}
function_sum 12 14
echo "The Sum Is" $Sum


function_diff(){
    Diff=$(( $1 - $2 ))
    return $Diff
}
function_diff 14 4
echo "The Diff Is" $?