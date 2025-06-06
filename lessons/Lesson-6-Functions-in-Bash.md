# 🧩 Lesson 6: Functions in Bash

---

## 🧠 What Are Functions?

A **function** is a **reusable block of code** that performs a specific task.

> Think of a function like a mini-script **inside** your script. You write it once and call it whenever you need it.

---

## 🎯 Why Use Functions?

* Keep code **organized** and **readable**
* Avoid repeating the same code
* Easier to **debug** and **maintain**
* Break a large task into smaller, logical parts

---

## 📘 Function Syntax in Bash

```bash
function_name() {
  commands
}
```

Or:

```bash
function function_name {
  commands
}
```

---

## ✅ Basic Example: A Simple Greeting

```bash
greet() {
  echo "Hello, welcome to Bash scripting!"
}

# Call the function
greet
```

> **Output**:
> Hello, welcome to Bash scripting!

---

## 🎯 Passing Arguments to Functions

### 📘 Syntax:

```bash
my_function() {
  echo "Argument 1: $1"
  echo "Argument 2: $2"
}
```

### ✅ Example:

```bash
print_name() {
  echo "Your name is $1"
}

print_name "Zakeer"
```

> **Output**:
> Your name is Zakeer

---

## 🔄 Returning Values from Functions

### ✅ Example with `return` (limited to numbers only):

```bash
add_numbers() {
  sum=$(($1 + $2))
  return $sum
}

add_numbers 3 4
echo "The sum is $?"
```

> `return` works only with numbers (0–255). Use `echo` for text values.

---

### ✅ Better Example: Use `echo` to return text

```bash
get_date() {
  echo "Today is $(date)"
}

result=$(get_date)
echo $result
```


## 📙 Check if a Number is Positive

```bash
#!/bin/bash

check_number() {
  if [ $1 -gt 0 ]; then
    echo "$1 is positive."
  else
    echo "$1 is not positive."
  fi
}

check_number 5
check_number -2
```

**Output:**

```
5 is positive.
-2 is not positive.
```

---

## 📕 Check If Two Words Match

```bash
#!/bin/bash

check_match() {
  if [ "$1" = "$2" ]; then
    echo "Words match!"
  else
    echo "Words do not match."
  fi
}

check_match "hello" "hello"
check_match "hello" "world"
```

**Output:**

```
Words match!
Words do not match.
```

---

## 🧮 Add Two Numbers

```bash
#!/bin/bash

add_numbers() {
  result=$(( $1 + $2 ))
  echo "The sum is: $result"
}

add_numbers 3 7
```

**Output:**

```
The sum is: 10
```

---

## 🔄 Reusable Calculator Function

```bash
calculator() {
  if [ "$2" == "+" ]; then
    echo $(($1 + $3))
  elif [ "$2" == "-" ]; then
    echo $(($1 - $3))
  else
    echo "Unsupported operation"
  fi
}

calculator 10 + 5
calculator 20 - 7
```

---

## 🚀 Best Practices

✅ Use **meaningful function names**
✅ Keep functions **short and focused**
✅ Add **comments** to explain complex logic
✅ Always **test** functions independently

---

## 📝 Summary

| Concept           | Explanation                   |
| ----------------- | ----------------------------- |
| `function_name()` | Declares a function           |
| `$1`, `$2`, etc.  | Function arguments            |
| `return`          | Sends back numeric result     |
| `echo`            | Returns any type of value     |
| `$(...)`          | Captures output of a function |
| Use `if` inside   | Check number, compare strings |

---

## 🧠 Quick Quiz

1. What's the difference between using `return` and `echo` in functions?
2. Write a function that takes a name and prints "Welcome, NAME".
3. `is_even`: Takes a number and prints "Even" or "Odd"
4. `max_number`: Takes two numbers and prints the bigger one
5. `starts_with_a`: Checks if a word starts with the letter "a"
