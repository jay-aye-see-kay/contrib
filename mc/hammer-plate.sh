#!/bin/sh

## 5 sec to get the mouse and everything into position
for i in $(seq 5 -1 1)
do
  echo "starting in $i"
  sleep 1
done

DISC_COUNT=15
for i in $(seq 1 $DISC_COUNT)
do
  echo "making disc $i of $DISC_COUNT..."

  ## put a disc on the anvil
  xdotool key 7 # raw pokeball in slot 7
  xdotool click 3 # right click
  xdotool key 6 # hammer in slot 7

  ## hold left mouse until it's done
  xdotool mousedown 1
  sleep 5
  xdotool mouseup 1
  xdotool click 3 # right click to pick it up
done
