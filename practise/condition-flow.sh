#! /usr/bin/bash

echo "Enter username: "
read username

read -p "Enter age: " age

echo "Hey $username, you are $age old"

if [ $username = "admin" ]; then
    echo "Welcome, admin!"
else
    echo "Hello, $username"
fi

if [ $age -lt 13 ]; then
    echo "Access denied"
elif [ $age -lt 18 ]; then
    echo "Limited Access"
else
    echo "Full Access"
fi
