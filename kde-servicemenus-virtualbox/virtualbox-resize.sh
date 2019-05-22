#!/bin/env bash

NEWSIZE=$(( 1024* $(kdialog --inputbox "Please enter new size in gigabytes (GB)")));

while [ $# -gt 0 ]; do
  VBOXMACHINE=$1
  VBoxManage modifyhd "$VBOXMACHINE" --resize $NEWSIZE
  shift
done

if [[ "$NEWSIZE" == ?(-)+([0-9]) ]]; then
  kdialog --msgbox "Done. Use a live-cd to extend the partition." --title "Resize VirtualBox Machine"
fi
