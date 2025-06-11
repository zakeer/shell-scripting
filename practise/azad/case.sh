#!/bin/bash


read -p " Select a player  jonathan | goblin | justin | aaru =" player

case $player in
  jonathan)
    echo "Jonathan plays for GodLike .";;
  goblin)
    echo "Goblin plays for S8UL .";;
  justin)
    echo "Justin plays for GDR.";;
  aaru)
    echo "Aaru plays for Orangatun .";;
  *)
    echo "No Information about the player .";;
esac