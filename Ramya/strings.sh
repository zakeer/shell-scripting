#! /usr/bin/bash

string="Ramya"
echo ${#string}
echo ${string:3:2}
echo ${string:2}

# Replacing part of a string

variable="Hello World"
echo ${variable/World/Ramya}
echo ${variable/l/@}
echo ${variable//l/@}

# Removing part of a string

variable="Hello World"
echo ${variable%rld}

#Arrays in Bash

new=("Apple" "Grape" "Banana" "Guava" "Mango")
array_length=${#new[@]}       # to find the Array length
i=0
while [ $i -lt $array_length ];do   # printing an array using while loop
   echo "Hey its:${new[$i]}"
   i=$(( i+1 ))
done

# Add and Remove items

new=("Apple" "Grape" "Banana" "Guava" "Mango")
new+=("Orange")  # Adding
unset new[1]    # deletes the element in index [1] postion
echo ${new[@]}

# Loops
 
seasons=("Rainy" "Autumn" "winter" "Summer" "Spring")
for season in ${seasons[@]};do
 echo " Season: $season"
done

languages=("Java" "Python" "GO" "Javascript" "SQL")
echo ${language[@]}
languages+=("Bash")
unset languages[2]
echo ${languages[@]}
for language in ${languages[@]};do
 echo "Language: $language"
done