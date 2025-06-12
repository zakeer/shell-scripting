#! /usr/bin/bash


for i in {1..5}
do
   echo "count: $((i+1))"
done


value=$1
while [ $value -lt 5 ];
do
    echo " value is : $((value++))"

done


count=$2
until [ $count -lt 10 ]; do
   echo " given value: $((count--))"
done


# breaking the loops

for i in {1..5}
   do 
   if [ $i -eq 3 ]; then
      break;      
   fi 
   echo " in break when i is 3 = $i"
 done

 # Continue ---Skip current iteration
for i in {1..5}
   do 
   if [ $i -eq 3 ]; then
      continue;      
   fi 
   echo " given continue when i is 3 =  $i"
 done