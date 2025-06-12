#! /usr/bin/bash

echo "enter value x : $1"
echo "enter value y : $2"

if [ $1 -lt $2 ];then
 echo " $1 is less than $2 "
 elif [ $1 -gt $2 ];then
 echo " $1 greater than $2 "
 elif [ $1 -eq $2 ];then
 echo " $1 equal to  $2 "
 else 
 echo "$1 not equal to $2"
 fi



echo " Choose a language: javascript,python,angler,css "
read language

case $language in
 javascript)
 echo " Javascript is a frontend language";;
 python)
 echo "python is a backend language";;
 angler)
 echo " Angler is a frontend language";;
 css)
 echo "CSS is a frontend language";;
 *)
 echo " unkown"
 esac



 