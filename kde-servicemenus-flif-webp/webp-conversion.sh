#!/bin/env bash

while [ $# -gt 0 ]; do
  OLDFORMAT=$1
  NEWFORMAT=$(echo " $OLDFORMAT" | sed 's/\.\w*$/.webp/')
  convert $OLDFORMAT $NEWFORMAT
  shift
done
