# 🚨 Lesson 9: Error Handling and Debugging in Bash

---

## 🧭 1. Exit Status (`$?`)

### 🔍 What is an Exit Status?

Every time you run a command in Bash, it returns a hidden value called **exit status**.

* `0` → Command **succeeded**
* Non-zero (1, 2, 127, etc.) → Command **failed**

You can check this using:

```bash
echo $?
```

### ✅ Example:

```bash
ls /some/folder
echo $?  # Shows 0 if folder exists, else non-zero (like 2)
```

#### 🧠 How It Works:

* `$?` is a **special variable** that always stores the **exit code of the last run command**.
* You can use this in `if` conditions for logic like:

```bash
if [ $? -ne 0 ]; then
  echo "Command failed!"
fi
```

---

## 💣 2. `set -e`: Stop on First Error

### 🔍 What does `set -e` do?

It tells Bash:

> "If any command fails, stop the whole script immediately."

### ✅ Example:

```bash
#!/bin/bash
set -e
echo "Start"
false          # Simulates a failure
echo "Won’t reach here"
```

#### 🧠 Explanation:

* `false` is a Bash command that always fails (returns exit code `1`).
* Because of `set -e`, the script **exits immediately** after `false`.
* `echo "Won’t reach here"` is **never executed**.

---

## 🐞 3. `set -x`: Print Commands While Executing

### 🔍 What does `set -x` do?

It puts the script into **debug mode** — every command will be printed **before it's run**.

### ✅ Example:

```bash
#!/bin/bash
set -x
name="Zakeer"
echo "Hi $name"
```

#### 🧠 Explanation:

* `set -x` adds a `+` prefix before every command it runs.
* You see what’s happening **step-by-step**, which helps during debugging.

---

## 🧲 4. `trap`: Catch Signals and Errors

### 🔍 What is `trap`?

`trap` allows you to run a **custom function** or **command** when:

* The script **exits**
* It’s **interrupted**
* It receives a specific **signal** (like `SIGINT` or `EXIT`)

---

### 🔸 Important Keywords:

| Keyword   | What It Means                                              |
| --------- | ---------------------------------------------------------- |
| `trap`    | Keyword to catch events                                    |
| `EXIT`    | Triggered when the script ends (normally or with `exit`)   |
| `SIGINT`  | Signal sent when user presses `Ctrl+C`                     |
| `sleep`   | Delays execution for a number of seconds                   |
| `SIGTERM` | Signal for graceful shutdown                               |
| `ERR`     | Special signal when any command fails (good with `set -e`) |

---

### ✅ Example: Trap on Script Exit (`EXIT`)

```bash
#!/bin/bash

cleanup() {
  echo "Cleaning up before exit..."
}

trap cleanup EXIT

echo "Doing work..."
sleep 1
```

#### 🧠 Explanation:

* `trap cleanup EXIT`: When the script ends, call the `cleanup` function.
* `sleep 1`: Pauses the script for 1 second.
* Useful for **removing temporary files** or **closing connections** safely.

---

### ✅ Example: Trap `Ctrl+C` (`SIGINT`)

```bash
#!/bin/bash

trap 'echo "You pressed Ctrl+C! Exiting..." ; exit' SIGINT

while true; do
  echo "Working... press Ctrl+C to stop"
  sleep 1
done
```

#### 🧠 Explanation:

* `SIGINT` is the signal sent when **user presses Ctrl+C**.
* `trap` intercepts that signal and runs a custom message.
* `while true`: Infinite loop — runs forever.
* `sleep 1`: Waits 1 second before repeating.

✅ This is helpful for **gracefully shutting down** scripts.

---

## 📦 Recap: What Each Command Means

| Command   | Purpose                                                            |
| --------- | ------------------------------------------------------------------ |
| `set -e`  | Stop the script when any command fails                             |
| `set -x`  | Show commands as they are run (for debugging)                      |
| `trap`    | Catch events or signals like `EXIT`, `SIGINT`                      |
| `sleep N` | Wait N seconds (simulate time delay or retry logic)                |
| `$?`      | Shows the result of the last command (0=success, non-zero=failure) |

---

## ✅ Try This Mini Project

```bash
#!/bin/bash
set -e
set -x

trap 'echo "Exiting safely!"' EXIT
trap 'echo "Script interrupted!" ; exit 1' SIGINT

echo "Running step 1"
sleep 1

false   # Will trigger failure

echo "This won’t be printed"
```

### What to Expect:

* `set -x` shows each step.
* `false` causes a failure → script stops (because of `set -e`).
* `trap EXIT` prints a goodbye message.
* If you press `Ctrl+C`, the `SIGINT` message is shown.

