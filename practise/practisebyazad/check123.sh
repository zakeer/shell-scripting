#!/usr/bin/bash

word="BashIsFun"

#printing first 4 lettrers

echo ${word:0:4}

#replcaing words

echo ${word/Fun/Easy}

#creating an array and print each language in a new line using loop

PLang=(python java c sql)
for PLang in ${PLang[@]};
do
    echo $PLang
done

#adding BASh to the list and removing the 2nd item

PLang+=("bash")
unset $PLang[1]

echo ${PLang[@]}
