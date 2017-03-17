#!/bin/bash 

THISFOLDER=$(pwd)
echo -e "\e[1mSearch inside files -- [ignore case]\e[0m"
echo -e "\nCurrent search folder: $THISFOLDER\n"
read -r -p "Enter string to search: " STRING

echo -e "\nFiles containing the string \e[93m$STRING\e[0m in \e[94m$THISFOLDER/\e[0m and subfolders are:\n\e[32m"
grep -Rils $STRING $THISFOLDER
echo -e "\e[91m\nSearch finished\e[0m"
