#! /home/codespace/.python/current/bin/python

print(10 * 78)

print("HEllo WORLD")

age = input()
if age < 18:
    print("Your not aligible for voting")
elif age > 18:
    print("Your aligible for voting")
else :
    print("messeage : Error")


for i in range(1, 11):
      print("*",i)

num = 7
for i in range(1, 11):
    print(f"{num} * {i} = {i*num}")
    i += 1