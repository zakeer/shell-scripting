
# shell-scripting

### Output
```bash
echo "YOUR TEXT"
```

### Variables
```bash
variable=value

# Example
x=10
y=20
username="Syed Zakeer Hussain"
```

### Access
```
$variable

#example
echo $variable
echo $username
```

### User Input
```bash
read -p "message" variableName

# example
read -p "Please provide your name: " guestName          # camelCase
read -p "Please provide designation: " job_designation  # snake_case
read -p "Please provide salary: " SALARY  # snake_case

echo "Hello $guestName"
```


### Shell Program (Bash Program)
- Create file shell file (`filename.sh`)
    - touch filename.sh
    - vim filename.sh
        1. Insert -> Press (`i`)
        2. Edit content
        3. ESC -> :wq
```


### File Permission
`rwx`
- r: read
- w: write
- x: execute

```bash
chmod u+x filename
```
