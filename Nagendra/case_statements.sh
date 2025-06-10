#!/bin/bash

# Example 1: Simple case statement
echo "Enter a number between 1 and 3:"
read num
case $num in
  1)
    echo "You selected One"
    ;;
  2)
    echo "You selected Two"
    ;;
  3)
    echo "You selected Three"
    ;;
  *)
    echo "Invalid selection"
    ;;
esac

# Example 2: Case with string input
echo "Enter a day (e.g., Mon, Tue, etc.):"
read day
case $day in
  Mon|mon)
    echo "Start of the work week"
    ;;
  Fri|fri)
    echo "Last working day!"
    ;;
  Sat|sat|Sun|sun)
    echo "Weekend!"
    ;;
  *)
    echo "Midweek day"
    ;;
esac

# Example 3: Case statement in a menu
echo "Select an option:"
echo "a) Show date"
echo "b) Show calendar"
echo "c) Show current directory"
read option

case $option in
  a)
    date
    ;;
  b)
    cal
    ;;
  c)
    pwd
    ;;
  *)
    echo "Invalid option"
    ;;
esac
