# 🎓 Lesson 8: String and Array Operations in Bash (Extended Explanation)

---

## 🧵 Part 1: String Manipulation in Bash

### 🔹 What is a String in Bash?

In Bash, a **string** is simply **text stored in a variable**. It can be anything: words, sentences, file names, etc.

---

### 📌 a) Assigning Strings

```bash
name="Zakeer"
```

* The `=` sign assigns the value **without any spaces** around it.
* `"Zakeer"` is the string being stored.
* Now, you can use `$name` to access the value.

```bash
echo "Hello, $name"
```

* Prints: `Hello, Zakeer`
* `$name` gets **replaced** by the value inside the variable.

---

### ✂️ b) Getting String Length

```bash
text="hello"
echo ${#text}
```

* `${#text}` gives the **number of characters** in the string.
* Output: `5`
  (Because "hello" has 5 letters)

---

### 📍 c) Extracting Substrings

```bash
text="BashScripting"
echo ${text:0:4}
```

* `${text:START:LENGTH}` is the format.
* This means: **start at index 0** and take **4 characters**.
* Output: `Bash`

```bash
echo ${text:4}
```

* Starts from position 4 and takes **everything till the end**.
* Output: `Scripting`

🔹 Bash starts counting from **0**.

---

### 🔁 d) Replacing Part of a String

```bash
greeting="Hello World"
echo ${greeting/World/Zakeer}
```

* `${variable/old/new}` replaces the **first occurrence** of `old` with `new`.
* Replaces `"World"` with `"Zakeer"` in the string.
* Output: `Hello Zakeer`

🧠 You can use `${variable//old/new}` to replace **all occurrences**.

---

### 🧼 e) Removing Part of a String

```bash
filename="report.txt"
echo ${filename%.txt}
```

* `%` is used to **remove a suffix** from the string.
* `%.txt` means "remove `.txt` if it appears at the end".
* Output: `report`

You can also use `#` for removing prefixes.

---

## 🧺 Part 2: Arrays in Bash

### 🔹 What is an Array?

An **array** is a **collection of values** (like a list).
You can store multiple items in one variable and access them using **index numbers**.

---

### 📌 a) Creating an Array

```bash
fruits=("apple" "banana" "cherry")
```

* We use `()` to group items.
* Each item is **separated by a space**, **not commas**.
* The **index starts at 0**:

  * `fruits[0]` = "apple"
  * `fruits[1]` = "banana"
  * `fruits[2]` = "cherry"

---

### 📎 b) Accessing Items

```bash
echo ${fruits[0]}   # apple
echo ${fruits[2]}   # cherry
```

* `${fruits[index]}` gets the item at the given position.

---

### 🔢 c) Get All Items

```bash
echo ${fruits[@]}
```

* `${fruits[@]}` or `${fruits[*]}` gives **all items** in the array.
* Output: `apple banana cherry`

---

### 📏 d) Length of an Array

```bash
echo ${#fruits[@]}
```

* `${#array[@]}` gives the **number of items** in the array.
* Output: `3` (since we added three fruits)

---

### 🧰 e) Add and Remove Items

```bash
fruits+=("orange")     # Add orange to the array
unset fruits[1]        # Remove banana (index 1)
```

* `+=` appends new elements.
* `unset` deletes the element at a specific index.
* After this:

  * `fruits[0]` = "apple"
  * `fruits[1]` = (removed)
  * `fruits[2]` = "cherry"
  * `fruits[3]` = "orange"

Note: **Bash arrays do not automatically reindex** after deletion.

---

## 🔁 Part 3: Looping Through Arrays

### 💡 Why loop?

To perform some action with **each item in the array** — like printing, checking, or modifying.

---

### 🔄 Loop Example

```bash
colors=("red" "green" "blue")

for color in "${colors[@]}"; do
  echo "Color: $color"
done
```

### 🔍 How it works:

* `"${colors[@]}"` gives **all elements**.
* `for color in ...` means: go through each item one-by-one.
* `echo` prints it.

Output:

```
Color: red
Color: green
Color: blue
```

---

## 🧠 Summary Table

| Concept           | Syntax                 | Meaning                  |
| ----------------- | ---------------------- | ------------------------ |
| String assignment | `str="hello"`          | Store text in a variable |
| String length     | `${#str}`              | Number of characters     |
| Substring         | `${str:start:length}`  | Slice part of a string   |
| Replace           | `${str/old/new}`       | Replace part of a string |
| Array declare     | `arr=(a b c)`          | Create a list            |
| Array item        | `${arr[1]}`            | Get one item             |
| All items         | `${arr[@]}`            | Get all array values     |
| Array length      | `${#arr[@]}`           | Get how many items       |
| Add item          | `arr+=("new")`         | Add item to array        |
| Remove item       | `unset arr[1]`         | Remove item at index     |
| Loop              | `for x in "${arr[@]}"` | Go through each item     |

---

## ✅ Practice Challenges

Try solving these yourself to reinforce your understanding:

1. Create a variable with the string `"BashIsFun"` and print the first 4 letters.
2. Replace `"Fun"` with `"Easy"` in the string.
3. Create an array of 4 programming languages.
4. Print each language in a new line using a loop.
5. Add `"Bash"` to the list and remove the second item.

