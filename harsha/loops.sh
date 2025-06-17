#for loop example
#! /usr/bin/bash

for i in {1..3}
do
    echo "Number: $i"
done

#for loop example with continue
#! /usr/bin/bash

for i in {1..3}
do
    if [ $i -eq 2 ]; then
        continue
    fi
    echo "Number: $i"
done

#for loop example with break
#! /usr/bin/bash

for i in {1..3}
do
    if [ $i -eq 2 ]; then
        break
    fi
    echo "Number: $i"
done

#while loop example
#! /usr/bin/bash

i=1
while [ $i -le 3 ]
do
    echo "Number: $i"
    i=$((i+1))
done

#until loop example
#! /usr/bin/bash

i=1
until [ $i -gt 3 ]
do
    echo "Number: $i"
    i=$((i+1))
done

