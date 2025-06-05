# 📄 Lesson 7: Working with Files in Bash

---

## 🎯 What You’ll Learn

* How to **read** and **write** to files
* What are **redirects** (`>`, `>>`, `<`)
* How to use **pipes** and the `tee` command
* Easy examples to understand file handling

---

## 📘 Why File Handling?

File handling lets your scripts:

* Save output (e.g., logs or results)
* Read input from a file
* Combine tools to build powerful automations

---

## 📂 1. Writing to a File with `>`

### ✏️ Use: Save output to a file (overwrite if it exists)

```bash
echo "Hello, Zakeer!" > greeting.txt
```

🔍 This **creates** or **overwrites** `greeting.txt` with the line:

```
Hello, Zakeer!
```

---

## 📑 2. Appending to a File with `>>`

### ✏️ Use: Add text to the end of a file without deleting existing content

```bash
echo "How are you?" >> greeting.txt
```

Now `greeting.txt` contains:

```
Hello, Zakeer!
How are you?
```

---

## 📖 3. Reading from a File with `<`

### 📥 Use: Take input from a file (not often used alone, but good to know)

```bash
cat < greeting.txt
```

This tells `cat` to read the file using `<`.

---

## 📃 4. Reading a File Line-by-Line (Practical Example)

```bash
#!/bin/bash

while read line; do
  echo "Line: $line"
done < greeting.txt
```

Each line in `greeting.txt` will be printed like:

```
Line: Hello, Zakeer!
Line: How are you?
```

---

## 🔗 5. Pipes `|` – Connecting Commands

### 🔧 Use: Send output from one command into another

```bash
echo "hello world" | tr a-z A-Z
```

**Output:**

```
HELLO WORLD
```

Here:

* `echo` prints "hello world"
* `tr` translates it to uppercase using a **pipe**

---

## 🪝 6. `tee` – Save Output **AND** Show It

### 🧰 Use: Show output and also write it to a file

```bash
echo "This is a test" | tee output.txt
```

Output:

```
This is a test
```

File `output.txt` contains:

```
This is a test
```

---

## 🧪 Example: Combine `echo`, `tee`, and `>>`

```bash
echo "New log entry" | tee -a log.txt
```

This **shows** the message and also **appends** it to `log.txt`.

---

## 🧠 Summary

| Symbol | Use                  |                                |
| ------ | -------------------- | ------------------------------ |
| `>`    | Write (overwrite)    |                                |
| `>>`   | Append               |                                |
| `<`    | Read from file       |                                |
| `|`     | `|`                 | Pipe output to another command |
| `tee`  | Show and save output |                                |

---

## ✅ Mini Practice

1. Write a line to a file `notes.txt` using `echo`.
2. Append three lines using `>>`.
3. Read and print each line using a `while` loop.
4. Convert file content to uppercase using `cat` + `| tr a-z A-Z`.
5. Save and display output using `tee`.

