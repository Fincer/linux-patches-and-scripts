#!/bin/env bash

kdialog --yesno "Destroy selected file(s)?" --title Destroy
answer=$(echo "$?")

if [ "$answer" == 0 ]; then
  while [ $# -gt 0 ]; do
    shred -n 3 -u "$1"
    shift
  done
  notify-send "File Destroy" -i dialog-ok 'Target file(s) destroyed'
else
  exit
fi
