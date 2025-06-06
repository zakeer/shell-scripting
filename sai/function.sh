#! /usr/bin/bash
# A function that takes a name and prints "Welcome, NAME".
welcome() {
    echo "Welcome, $1"
}

welcome "Sai"

#! /usr/bin/bash
# A function is_even: takes a number and prints "Even" or "Odd"
is_even() {
    number=$1
    result=$((number % 2))
    if [ $result -eq 0 ]; then
        echo "Even"
    else
        echo "Odd" 
    fi
}
 
#! /usr/bin/bash    
# max_number: takes two numbers and prints the bigger number
max_number() {
    num1=$1
    num2=$2
    if [ $num1 -gt $num2 ]; then
        echo "Bigger number is: $num1"
    else
        echo "Bigger number is: $num2"
    fi
}

#! /usr/bin/bash
# starts_with_a: Checks if a word starts with the letter "a"
starts_with_a() {
    word=$1
    if [[ $1 == a* ]] || [[ $1 == A* ]]; then
        echo "Yes"
    else
        echo "No"
    fi
}
