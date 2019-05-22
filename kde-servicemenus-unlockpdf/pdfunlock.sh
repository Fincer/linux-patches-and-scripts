#!/bin/env bash

while [ $# -gt 0 ]; do
  ENCRYP=$1
  DECRYP=$(echo "$ENCRYP" | sed 's/\.\w*$/_unlocked.pdf/')
  #qpdf --decrypt "$ENCRYP" "$DECRYP"
  gs -sPDFPassword=$PASS -q -dNOPAUSE -dBATCH -sDEVICE=pdfwrite -sOutputFile=%stdout% -c .setpdfwrite -f "$ENCRYP" > "$DECRYP"
  shift
done
