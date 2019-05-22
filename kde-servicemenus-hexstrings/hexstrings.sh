#!/bin/env bash

while [ $# -gt 0 ]; do
  HEXFILE=$1
  HEXFILE_STRINGS=$(echo "$HEXFILE" | sed 's/\.\w*$/_strings.txt/')
  #Export strings from a hex file and sort them alphabetically.
  strings "$HEXFILE" | sort > "$HEXFILE_STRINGS" 
  shift
done
