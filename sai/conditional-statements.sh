#!/bin/bash

echo "Enter a number:"
read number

if [ $number -gt 0 ]; then
    echo "$number is positive"
else
    echo "$number is zero"
fi

#elif example
#!/bin/bash

echo "Enter a number:"
read number
if [ $((number % 2)) -eq 0 ]; then
    echo "$number is even"
elif [ $((number % 2)) -eq 1 ]; then
    echo "$number is odd"
else
    echo "Invalid input"
fi

#case example

echo "Enter a number:"
read number

case $number in
    1) 
      echo "one";;
    2)
      echo "two";;
    *) 
      echo "unknown";;
esac
