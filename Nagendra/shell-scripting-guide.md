# Shell Scripting Commands and Concepts

## 1. Basic Shell Commands

| Command | Description | Example |
|---------|-------------|---------|
| `pwd` | Prints current working directory | `pwd` → `/home/user` |
| `ls` | Lists files in a directory | `ls -l` |
| `cd` | Changes directory | `cd /etc` |
| `echo` | Prints text or variables | `echo "Hello"` |
| `clear` | Clears the terminal screen | `clear` |
| `exit` | Exits the shell or script | `exit 0` |

---

## 2. File and Directory Operations

| Command | Description | Example |
|---------|-------------|---------|
| `touch` | Creates an empty file | `touch file.txt` |
| `mkdir` | Creates a directory | `mkdir folder` |
| `rm` | Removes file or directory | `rm file.txt`, `rm -r folder` |
| `cp` | Copies files/directories | `cp a.txt b.txt` |
| `mv` | Moves or renames files | `mv old.txt new.txt` |

---

## 3. Variable Handling

```bash
name="Rahman"
echo "My name is $name"
```

Input from user:

```bash
read name
echo "Hello $name"
```

---

## 4. Conditional Statements

### if-else

```bash
if [ $age -ge 18 ]; then
  echo "Adult"
else
  echo "Minor"
fi
```

### elif

```bash
if [ $marks -ge 90 ]; then
  echo "A grade"
elif [ $marks -ge 75 ]; then
  echo "B grade"
else
  echo "C grade"
fi
```

---

## 5. Loops

### For Loop

```bash
for i in 1 2 3
do
  echo "Value: $i"
done
```

### While Loop

```bash
count=1
while [ $count -le 5 ]
do
  echo $count
  ((count++))
done
```

### Until Loop

```bash
count=1
until [ $count -gt 5 ]
do
  echo $count
  ((count++))
done
```

---

## 6. Functions

```bash
greet() {
  echo "Hello, $1"
}

greet Rahman
```

---

## 7. User Input

```bash
echo "Enter your name:"
read name
echo "Welcome $name!"
```

---

## 8. Command Line Arguments

```bash
echo "Script name: $0"
echo "First argument: $1"
echo "Second argument: $2"
```

Run: `bash script.sh hello world`

---

## 9. Arithmetic Operations

```bash
a=10
b=20
echo "Sum = $((a + b))"
```

---

## 10. Case Statement

```bash
read -p "Enter choice: " choice
case $choice in
  1) echo "One";;
  2) echo "Two";;
  *) echo "Invalid";;
esac
```

---

## 11. File Test Operators

| Operator | Description |
|----------|-------------|
| `-r` | Read permission |
| `-w` | Write permission |
| `-x` | Execute permission |
| `-e` | File exists |
| `-f` | Regular file |
| `-d` | Directory |

Example:

```bash
if [ -f file.txt ]; then
  echo "File exists"
fi
```

---

## 12. String Comparison

```bash
str1="abc"
str2="xyz"

if [ "$str1" = "$str2" ]; then
  echo "Equal"
else
  echo "Not Equal"
fi
```

---

## 13. Loops with Break and Continue

```bash
for i in {1..5}
do
  if [ $i -eq 3 ]; then
    continue
  fi
  echo "Value: $i"
done
```

---

## 14. Redirects & Pipes

| Symbol | Description | Example |
|--------|-------------|---------|
| `>` | Redirect output | `echo "Hi" > file.txt` |
| `>>` | Append output | `echo "More" >> file.txt` |
| `<` | Input from file | `sort < file.txt` |
| `|` | Pipe output | `ls | grep txt` |

---
