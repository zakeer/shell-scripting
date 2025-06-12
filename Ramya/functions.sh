#! /usr/bin/bash

greek_date() {
   echo " date is : $(date)"
}
greek_date

number(){
    if [[ $1 -gt 0 ]]; then
        echo " given number is positive"
    else
       echo " given number is negative"
    fi
}
number 23
number -2


# calucating two numbers
calculate(){
    if [[ $2 = "+" ]]; then
        echo $(($1+$2))
    elif [[ $2 = "-" ]]; then
        echo $(($1 - $3))
    elif [[ $2 = "x" ]]; then
        echo "$(($1 * $3))"
    elif [[ $2 = "/" ]];then
         echo "$(($1 / $3))"

    fi
}
calculate 4 - 2
calculate 4 x 2
calculate 4 / 2