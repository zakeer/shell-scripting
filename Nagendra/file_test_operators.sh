#!/usr/bin/bash

# Example 1: Check if a file exists
echo "Enter filename to check if it exists:"
read filename
if [ -e "$filename" ]; then
  echo "File '$filename' exists."
else
  echo "File '$filename' does not exist."
fi

# Example 2: Check if it is a regular file
if [ -f "$filename" ]; then
  echo "'$filename' is a regular file."
else
  echo "'$filename' is not a regular file."
fi

# Example 3: Check if it is a directory
if [ -d "$filename" ]; then
  echo "'$filename' is a directory."
else
  echo "'$filename' is not a directory."
fi

# Example 4: Check if the file is readable
if [ -r "$filename" ]; then
  echo "'$filename' is readable."
else
  echo "'$filename' is not readable."
fi

# Example 5: Check if the file is writable
if [ -w "$filename" ]; then
  echo "'$filename' is writable."
else
  echo "'$filename' is not writable."
fi

# Example 6: Check if the file is executable
if [ -x "$filename" ]; then
  echo "'$filename' is executable."
else
  echo "'$filename' is not executable."
fi

# Example 7: Check if file is empty
if [ -s "$filename" ]; then
  echo "'$filename' is not empty."
else
  echo "'$filename' is empty or does not exist."
fi
