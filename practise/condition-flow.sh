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

# read -p "Which team you belong to : " team
echo "Which team you belong to : "
echo "ux"
echo "frontend"
echo "backend"
read team

case $team in
	ux)
		echo "Please start working design login page";;
	frontend)
		echo "Develop UI component for login page";;
	backend)
		echo "Implement authentication api for login page";;
	*)
		echo "Sorry not allowed to work";;
esac

