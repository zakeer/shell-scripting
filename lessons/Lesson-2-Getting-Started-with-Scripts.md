# 🚀 Lesson 2: Getting Started with Scripts

---

## 📝 What is a Bash Script?

A **Bash script** is a plain text file containing a series of Bash commands that the shell can execute sequentially.

### Example:

```bash
#!/bin/bash
echo "Hello, this is my first Bash script!"
```

---

## 🧾 Writing Your First Script

1. **Open a terminal**
2. **Create a file**

   ```bash
   touch myscript.sh
   ```
3. **Edit the file**

   ```bash
   nano myscript.sh
   ```

   Paste this into the file:

   ```bash
   #!/bin/bash
   echo "Script is running..."
   date
   ```
4. **Save and exit** (`Ctrl + O`, `Enter`, then `Ctrl + X` in nano)

---

## ✅ Making a Script Executable

To allow your system to run your script as a program, make it executable:

```bash
chmod +x myscript.sh
```

---

## ▶️ Running a Bash Script

Now that it’s executable, run it with:

```bash
./myscript.sh
```

### Alternate Method:

You can also run the script without making it executable:

```bash
bash myscript.sh
```

---

## 💡 Shebang (`#!`)

The **shebang** at the top of the script:

```bash
#!/bin/bash
```

Tells the system to use the Bash interpreter to run the script. Without it, the system may not know how to execute your script.

---

## 🧪 Try It Yourself

Create a script called `greet.sh`:

```bash
#!/bin/bash
echo "Welcome, $USER!"
echo "Today is: $(date)"
echo "Current directory: $(pwd)"
```

Make it executable and run it:

```bash
chmod +x greet.sh
./greet.sh
```

---

## 🧠 Summary

| Topic           | Description                        |
| --------------- | ---------------------------------- |
| **Script file** | A file containing Bash commands    |
| **Shebang**     | `#!/bin/bash` tells OS to use Bash |
| **chmod +x**    | Makes the script executable        |
| **Run script**  | `./script.sh` or `bash script.sh`  |

---

## 🧠 Quick Quiz

1. What does `chmod +x script.sh` do?
2. What is the purpose of the `#!/bin/bash` line?
3. How do you run a script from the terminal?
