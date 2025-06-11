#!/bin/bash

read -p "Enter your K/D:" x

if [ $x -lt 2 ]; then
  echo "You're a NOOB."
elif [ $x -le 5  ]; then
  echo "You're a AVG Player."
else
  echo "You're an PRO PLayer."
fi