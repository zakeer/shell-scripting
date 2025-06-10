#!/usr/bin/bash

# Example 1: Output redirection (overwrite)
echo "This will overwrite file.txt" > file.txt
cat file.txt

# Example 2: Output redirection (append)
echo "This will append to file.txt" >> file.txt
cat file.txt

# Example 3: Input redirection
echo "Creating input.txt with some content"
echo -e "Line 1\nLine 2\nLine 3" > input.txt
echo "Reading from input.txt using input redirection:"
while read line
do
  echo "Line: $line"
done < input.txt

# Example 4: Using pipe to connect commands
echo -e "apple\nbanana\norange" | grep "an"
# Output will be "banana" and "orange"

