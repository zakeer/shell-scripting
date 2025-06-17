## Variables

In shell scripting, variables are used to store data. Here's how to declare and use variables:

### Basic Variable Declaration
```bash
# Basic variable declaration
name="Sai Lakshmi priya"    # Here name is variable and "Sai Lakshmi priya" is value 
```

### Accessing variables using $ symbol
```
echo $name
echo "My name is $name"
```

### Important Rules for Variables
1. Variable names are case-sensitive
2. No spaces around the `=`

### Read
```
echo "Enter your name:"
read user_name
echo "hey , $user_name"
```

### Special Variables
- `$0`: Script name
- `$1`, `$2`, Arguments passed to the script
- `$#`: Number of arguments
- `$@`: All arguments
- `$?`: Exit status of last command
- `$$`: Process ID of the script


## Data Types Used in bash

- In Bash scripting, it will consider everything as string unless we mention.

### 1. Strings
```bash
# String declaration
name="Sai"
message='hey sai'
```

### 2. Numbers
```bash
# Integer
age=25
count=100

# example
x=5
y=2
sum=$((x * y)) # arithmetic operation
echo "Sum is: $sum"
```



