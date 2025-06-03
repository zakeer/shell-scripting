#!/usr/bin/bash

    #          0                   1        2
friends=("Syed Zakeer Hussain" "V Harish" "CH Harsha", "ManiKanta Narahari")

# echo ${values[0]}
# echo ${values[1]}
# echo ${values[2]}

for friend_name in "${friends[@]}"
do
    echo "Hey $friend_name"
done

for number in one two three four five six 
do
    echo $number
done

for number in {1..20}
do
    if [ $((number % 2)) -eq 0 ]; then
        echo "$number is Even"
    else
        echo "$number is Odd"
    fi
done




