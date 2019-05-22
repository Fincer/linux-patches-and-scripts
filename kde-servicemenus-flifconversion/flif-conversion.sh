#!/bin/env bash

while [ $# -gt 0 ]; do
  OLDFORMAT=$1
  NEWFORMAT=$(echo " $OLDFORMAT" | sed 's/\.\w*$/.flif/')
  flif -e $OLDFORMAT $NEWFORMAT
  shift
done
