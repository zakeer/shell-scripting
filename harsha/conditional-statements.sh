#!/bin/bash


read -p "Enter your name: " name

if [ "$name" = "admin" ]; then
    echo "Welcome, admin!"
else
    echo "Hello, $name!"
fi

