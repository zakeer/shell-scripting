#! /usr/bin/bash

#exapmle:- 1 (Even or Odd)
def even_or_odd(num):
    if num % 2 == 0:
        print("given number is Even" )
    else:
        print("given number is odd")
even_or_odd(2)

#example:- 2 (sum of numbers)
def sum_of_numbers(numbers):
    total = 0
    for num in numbers:
        total = total + num
    print(total)
numbers = [1, 2, 3, 4, 5]
sum_of_numbers(numbers)

#example:- 3 (count of vowels)
def count_of_vowels(name):
    vowels = "aeiouAEIOU"
    count = o
    for  char in name:
        if char in vowels:
            count += 1
    print(count)
count_of_vowels("shaik Sameer Basha")
