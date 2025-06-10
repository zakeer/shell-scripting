#!/usr/bin/bash

# Example 1: Comparing two strings for equality
str1="hello"
str2="hello"

if [ "$str1" = "$str2" ]; then
  echo "Strings are equal"
else
  echo "Strings are not equal"
fi

# Example 2: Checking inequality
str3="Hello"
if [ "$str1" != "$str3" ]; then
  echo "'$str1' is not equal to '$str3'"
fi

# Example 3: Checking if a string is empty
empty_str=""
if [ -z "$empty_str" ]; then
  echo "String is empty"
fi

# Example 4: Checking if a string is not empty
non_empty="Shell"
if [ -n "$non_empty" ]; then
  echo "String is not empty"
fi

# Example 5: Lexicographical comparison using < and >
strA="apple"
strB="banana"

if [[ "$strA" < "$strB" ]]; then
  echo "'$strA' comes before '$strB'"
else
  echo "'$strA' comes after or is equal to '$strB'"
fi

# Example 6: Case-sensitive comparison
echo "Enter a word:"
read user_word

if [ "$user_word" = "Admin" ]; then
  echo "Welcome Admin"
else
  echo "Access Denied"
fi
