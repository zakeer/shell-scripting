# Variables

 - `$0` name of the script
 - `$1 ,$2,...` arguments passed
 - `$#` Number of arguments
 - `$@` All arguments
 - `$$` Process Id of the script
 - `$?` exit status of last command (0= success)

#### To access a variable

- `name=Ramya` ---Declaring a variable
- `$variable_name` -- Access a variable
- `(( )) ` used in arthmetic operations example-- $((num1 - num2)), $(( 2 * 4 ))
- `read variable_name` --User input

#### Writing to a file `>`

- echo "hello world" > file.txt
 
#### Append to a file

- echo "hey !!" >> file.txt
#### Read from a file

- cat < file.txt
#### To read a file line by line using while loop

-  while read line; do
-  echo " Hello : $line"
-  done < file.txt

#### | Pipe symbol for connecting commands

-  `echo "Hello world" | tee -a file.txt `  shows the msg and  tee--save  -a---appends to file.txt
-  `cat  file.txt | tr a-z A-Z `  displays the content of the file in Uppercase

## Strings

-  Every STRING starts counting from 0,1,2..
- `${#string}` getting string length  OUTPUT---5
-  `${string:3:2}` extracting the substring format-${text:START:LENGTH}  OUTPUT---ya
- `${string:2}` substring start at 2 till the ending
- `${string/old/new}` Replacing part of a string (first occurence)
- `${string//old/new}`  Replacing all occurences
- ` echo ${string%removing_part} ` Removing part of a string
- `fruits=("apple" "banana" "orange")` Creating an array # in bash we use spaces for seperation
- `echo ${fruits[@]}` `echo ${fruits[*]}`  To get all items
- `echo ${#fruits[@]} `  find the length of an array
- ` fruits+=("Guaua")`   Adding an item into an array
- `unset fruits[1]`  Removing an item in specific index position
