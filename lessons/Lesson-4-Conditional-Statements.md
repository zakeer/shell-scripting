# 🔀 Lesson 4: Conditional Statements in Bash

---

## ❓ What Are Conditional Statements?

Conditional statements let your script **make decisions**.

> Example: If it's raining, take an umbrella. If it's sunny, wear sunglasses.

In Bash, we use `if`, `else`, `elif`, and `case` for conditions.

---

## 🧱 Basic `if` Statement

```bash
#!/bin/bash

if [ condition ]; then
  # code to run if condition is true
fi
```

### ✅ Example 1: Check if a number is positive

```bash
#!/bin/bash

number=5

if [ $number -gt 0 ]; then
  echo "The number is positive."
fi
```

---

## ➕ Comparison Operators

| Operator | Meaning          |
| -------- | ---------------- |
| `-eq`    | equal to         |
| `-ne`    | not equal to     |
| `-gt`    | greater than     |
| `-lt`    | less than        |
| `-ge`    | greater or equal |
| `-le`    | less or equal    |

> For strings: `=` (equal), `!=` (not equal), `-z` (empty), `-n` (not empty)

---

## 🧲 if...else Statement

```bash
#!/bin/bash

echo "Enter a number:"
read num

if [ $num -gt 10 ]; then
  echo "Greater than 10"
else
  echo "10 or less"
fi
```

---

## 🧱 if...elif...else

```bash
#!/bin/bash

echo "Enter your age:"
read age

if [ $age -lt 13 ]; then
  echo "You're a child."
elif [ $age -lt 20 ]; then
  echo "You're a teenager."
else
  echo "You're an adult."
fi
```

---

## 🧪 String Comparison Example

```bash
#!/bin/bash

echo "Enter username:"
read username

if [ "$username" = "admin" ]; then
  echo "Welcome, admin!"
else
  echo "Access denied."
fi
```

> Always **quote variables** like `"$username"` to avoid errors if the variable is empty or has spaces.

---

## 🔘 The `case` Statement

Good for multiple fixed choices.

```bash
#!/bin/bash

echo "Choose a fruit: apple, banana, orange"
read fruit

case $fruit in
  apple)
    echo "Apples are red or green.";;
  banana)
    echo "Bananas are yellow.";;
  orange)
    echo "Oranges are orange.";;
  *)
    echo "Unknown fruit.";;
esac
```

> `;;` ends each case block. `*` is the default (like "else").

---

## 🧠 Summary

| Syntax                          | Description                  |
| ------------------------------- | ---------------------------- |
| `if [ condition ]; then ... fi` | Basic condition              |
| `if...else`                     | Two options                  |
| `if...elif...else`              | Multiple conditions          |
| `case...esac`                   | Match one among many options |

---

## 🧠 Quick Quiz

1. What does `-gt` mean?
2. How do you check if a string is empty?
3. Write a script that checks if a number is even or odd using `if`.
