# 🧑‍💻 Lesson 1: Introduction to Bash

---

## 📌 What is Bash?

**Bash** (Bourne Again SHell) is a command-line shell and scripting language commonly used on Linux and macOS systems. It serves two primary purposes:

* **Interactive Shell**: To run commands manually.
* **Scripting Language**: To automate tasks via scripts.

> Bash is a superset of the original Bourne Shell (`sh`), adding useful features like command history, tab completion, and improved scripting capabilities.

---

## ✅ Why Use Bash Scripting?

Bash scripting is powerful for:

* Automating repetitive system administration tasks.
* Writing deployment and backup scripts.
* Creating CLI tools for software development.
* Managing file operations, user input, and network tasks.

---

## 🧰 Basic Shell Concepts

### 1. **Terminal**

The terminal is where you enter commands. Bash is the program interpreting these commands.

You can access the terminal via:

* **macOS**: Terminal app
* **Linux**: Ctrl+Alt+T
* **Windows**: WSL (Windows Subsystem for Linux), Git Bash, or Ubuntu via terminal

### 2. **Command Structure**

```bash
command [options] [arguments]
```

**Example:**

```bash
ls -l /home/user
```

* `ls`: command
* `-l`: option (long format)
* `/home/user`: argument (directory to list)

---

## 🔧 Try It Yourself

Open your terminal and try these:

```bash
echo "Hello, World!"
pwd
whoami
```

### What They Do:

* `echo`: prints a message
* `pwd`: prints the current working directory
* `whoami`: shows your username

---

## 📝 Summary

| Concept               | Description                                |
| --------------------- | ------------------------------------------ |
| **Bash**              | A command processor and scripting language |
| **Terminal**          | Interface to interact with the OS          |
| **Command Structure** | `command [options] [arguments]`            |
| **Basic Commands**    | `echo`, `pwd`, `ls`, `whoami`              |

---

## 🧠 Quick Quiz

1. What does `pwd` do?
2. How do you print a message in the terminal?
3. What command shows your current username?
