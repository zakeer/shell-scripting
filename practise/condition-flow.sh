#! /usr/bin/bash

echo "Enter a number:"
read num

if [ $num -gt 0 ]; then
    echo "The number is positive."
elif [ $num -lt 0 ]; then
    echo "The number is negative."
else
    echo "The number is zero."
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

