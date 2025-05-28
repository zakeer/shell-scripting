# 🧮 Lesson 3: Variables and Data Types in Bash

---

## 📦 What is a Variable?

A **variable** is like a container in memory. You can **store data** in it and use it later.

---

## 🪄 How to Create a Variable

```bash
name="Alice"
```

### ✅ Rules:

* No spaces around `=`
* Variable names are case-sensitive (`Name` and `name` are different)

---

## 👀 How to Use (Access) a Variable

Use `$` before the variable name:

```bash
echo "Hello, $name"
```

**Output:**

```
Hello, Alice
```

---

## 📥 Reading User Input

Let the user enter a value at runtime:

```bash
echo "What is your name?"
read user_name
echo "Welcome, $user_name!"
```

---

## 🧠 Special Variables

| Variable      | Description                               |
| ------------- | ----------------------------------------- |
| `$0`          | Name of the script                        |
| `$1`, `$2`, … | Arguments passed to the script            |
| `$#`          | Number of arguments                       |
| `$@`          | All arguments                             |
| `$$`          | Process ID of the script                  |
| `$?`          | Exit status of last command (0 = success) |

### Example:

```bash
#!/bin/bash
echo "Script name: $0"
echo "First argument: $1"
```

Run it like this:

```bash
bash script.sh hello
```

**Output:**

```
Script name: script.sh
First argument: hello
```

---

## 🔠 Data Types in Bash

Bash treats everything as **strings** unless you do something special.

### 1. **String**

```bash
greeting="Hello"
```

### 2. **Number**

```bash
x=5
y=3
sum=$((x + y))
echo "Sum is: $sum"
```

> `(( ))` is used for arithmetic.

---

## 💡 Pro Tip: Quotes

* Use **double quotes** when printing variables: `"Hello, $name"`
* Use **single quotes** when you don’t want variables to be replaced: `'Hello, $name'` (will print literally)

---

## 🧪 Try It Yourself

Create a script called `userinfo.sh`:

```bash
#!/bin/bash
echo "Enter your name:"
read name
echo "Enter your age:"
read age

echo "Hi $name, you are $age years old."
```

Make it executable and run it:

```bash
chmod +x userinfo.sh
./userinfo.sh
```

---

## 🧠 Summary

| Concept          | Example                |
| ---------------- | ---------------------- |
| Declare variable | `name="Zakeer"`        |
| Use variable     | `echo $name`           |
| User input       | `read variable_name`   |
| Arithmetic       | `sum=$((x + y))`       |
| Special variable | `$0`, `$1`, `$?`, etc. |

---

## 🧠 Quick Quiz

1. How do you store a name in a variable called `user`?
2. How do you ask the user for their name?
3. What will `echo $((5 * 2))` print?
