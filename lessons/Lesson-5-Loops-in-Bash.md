# 🔁 Lesson 5: Loops in Bash

---

## 🧠 What Are Loops?

**Loops** are used to repeat a set of commands **multiple times**, making your scripts powerful and efficient.

> Think of a loop as a washing machine that runs the same wash cycle over and over — until it’s done.

---

## 🎯 Why Use Loops?

* Automate repetitive tasks
* Reduce code duplication
* Process multiple files or data items
* Interact with users until correct input is given

---

## 🔂 Types of Loops in Bash

| Loop Type | Description                             |
| --------- | --------------------------------------- |
| `for`     | Repeat over a list or range             |
| `while`   | Repeat *while* a condition is true      |
| `until`   | Repeat *until* a condition becomes true |

---

## 🔁 The `for` Loop

### 🔹 Theory:

A `for` loop is best when you know **how many times** you want to repeat something or have a list to go through.

### 📘 Syntax:

```bash
for variable in list
do
  commands
done
```

### ✅ Example:

```bash
for fruit in apple banana cherry
do
  echo "I like $fruit"
done
```

> Output:
> I like apple
> I like banana
> I like cherry

---

## 🔁 `for` Loop with Numbers

```bash
for i in {1..5}
do
  echo "Count: $i"
done
```

> Prints numbers from 1 to 5

---

## 🔁 The `while` Loop

### 🔹 Theory:

A `while` loop is used when the **condition needs to be checked before each iteration**.

### 📘 Syntax:

```bash
while [ condition ]
do
  commands
done
```

### ✅ Example:

```bash
count=1
while [ $count -le 3 ]
do
  echo "Count is $count"
  ((count++))
done
```

---

## 🔁 The `until` Loop

### 🔹 Theory:

An `until` loop runs until the **condition becomes true** — almost like the opposite of `while`.

### 📘 Syntax:

```bash
until [ condition ]
do
  commands
done
```

### ✅ Example:

```bash
count=1
until [ $count -gt 3 ]
do
  echo "Count is $count"
  ((count++))
done
```

---

## ⛔ Controlling Loops

### 🧱 `break` – Exit the loop early

```bash
for i in {1..5}
do
  if [ $i -eq 3 ]; then
    break
  fi
  echo "i is $i"
done
```

> Stops when `i` becomes 3

---

### 🔁 `continue` – Skip current iteration

```bash
for i in {1..5}
do
  if [ $i -eq 3 ]; then
    continue
  fi
  echo "i is $i"
done
```

> Skips printing 3

---

## 💡 Real-World Example

### Check which websites are reachable

```bash
sites=("google.com" "github.com" "fake.site")

for site in "${sites[@]}"
do
  if ping -c 1 $site &> /dev/null
  then
    echo "$site is reachable."
  else
    echo "$site is unreachable."
  fi
done
```

---

## 📝 Summary

| Concept    | Explanation                         |
| ---------- | ----------------------------------- |
| `for`      | Repeats over a list or range        |
| `while`    | Runs *while* condition is true      |
| `until`    | Runs *until* condition becomes true |
| `break`    | Exits the loop early                |
| `continue` | Skips one iteration and continues   |

---

## 🧠 Quick Quiz

1. What’s the difference between `while` and `until`?
2. Write a `for` loop to print numbers 1 to 3.
3. How would you skip printing number 2 in a loop?
