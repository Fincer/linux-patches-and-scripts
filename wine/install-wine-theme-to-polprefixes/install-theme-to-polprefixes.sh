#!/bin/bash

# This script installs a user selected theme file for all existing
# PlayOnLinux wine prefixes.
# The purpose of this script is to automate theme selection process
# in a case user has many wineprefixes which would otherwise
# require manual tweaking, individually.
#
# USAGE: Change your theme preferences here and then run the script.
#
# NOTE: If you change VistaPerfection theme to another one, please
# make sure you change corresponding registry values below!

#########################################################################

REGFILE=user.reg
MAINFOLDER=$HOME/.PlayOnLinux/wineprefix/
THEMEFILE=VistaPerfection.msstyles
THEMEFOLDER=drive_c/windows/Resources/Themes/VistaPerfection/

#########################################################################
# Add VistaPerfection theme to each existing PlayOnLinux Wine prefix 
# folder.

for i in $MAINFOLDER/* ; do
    if [[ -d $i ]]; then # Filter directories only and exclude all files

#########################################################################
# Copy theme file into correct folder.

        mkdir -p $i/$THEMEFOLDER
        cp -rf ./$THEMEFILE $i/$THEMEFOLDER

#########################################################################
# If pattern [Control Panel\\Colors] exists in user.reg (basically, it always does)

        if [[ $(cat $i/$REGFILE | grep -c "\[Control Panel\\\\\\\\Colors\]") -eq 1 ]]; then

    # If no theme is applied, ThemeManager registry key shouldn't exist. We check this, and if the check returns 0, then
            if [[ $(cat $i/$REGFILE | grep -c "\[Software\\\\\\\\Microsoft\\\\\\\\Windows\\\\\\\\CurrentVersion\\\\\\\\ThemeManager\]") -eq 0 ]]; then

        # Delete lines between [Control Panel\\Colors] and #time
                sed -i '/\[Control Panel\\\\Colors\]/,/#time/ { // { x; s/$/./; x; }; x; /.../! { x; d; }; x; }' $i/$REGFILE

            else

        # Else, we expect that some theme is already applied and range of lines [Control Panel\\Colors] - "WindowText" exists.

        # Delete all between lines [Control Panel\\Colors] to the next "WindowText" line (including these lines themselves, too).
        # First match only.

                sed -i '/\[Control Panel\\\\Colors\]/,/.*WindowText/ { // { x; s/$/./; x; }; x; /.../! { x; d; }; x; }' $i/$REGFILE
            fi
        fi

#########################################################################
# If pattern [Software\\Microsoft\\Windows\\CurrentVersion\\ThemeManager]
# exists in user.reg.

        if [[ $(cat $i/$REGFILE | grep -c "\[Software\\\\\\\\Microsoft\\\\\\\\Windows\\\\\\\\CurrentVersion\\\\\\\\ThemeManager\]") -eq 1 ]]; then

# Then delete all between lines [Software\\Microsoft\\Windows\\CurrentVersion\\ThemeManager]
# to the next "ThemeActive" line (including these lines themselves, too).
# First match only.

            sed -i '/\[Software\\\\Microsoft\\\\Windows\\\\CurrentVersion\\\\ThemeManager\]/,/.*ThemeActive/ { // { x; s/$/./; x; }; x; /.../! { x; d; }; x; }' $i/$REGFILE
        fi

#########################################################################
# If pattern [Software\\Microsoft\\Windows\\CurrentVersion\\ThemeManager\\Control Panel\\Colors]
# exists in user reg.

        if [[ $(cat $i/$REGFILE | grep -c "\[Software\\\\\\\\Microsoft\\\\\\\\Windows\\\\\\\\CurrentVersion\\\\\\\\ThemeManager\\\\\\\\Control Panel\\\\\\\\Colors]") -eq 1 ]]; then
    
# Then delete all between lines [Software\\Microsoft\\Windows\\CurrentVersion\\ThemeManager\\Control Panel\\Colors]
# to the next "WindowText" line (including these lines themselves, too).
# First match only.

            sed -i '/\[Software\\\\Microsoft\\\\Windows\\\\CurrentVersion\\\\ThemeManager\\\\Control Panel\\\\Colors\]/,/.*WindowText/ { // { x; s/$/./; x; }; x; /.../! { x; d; }; x; }' $i/$REGFILE
        fi
    
#########################################################################
# Insert the following lines before [Control Panel\\Desktop] entry.
# To modify theme colors universally for all PlayOnLinux wineprefixes, modify these values and re-run this bash script.
#
# If you use another theme file than VistaPefection, you must change these values!

sed -i '/\[Control Panel\\\\Desktop\]/i \
[Control Panel\\\\Colors] 1412354567 0 \
#time=1cfdf290fdf9d80 \
"ActiveBorder"="212 208 200" \
"ActiveTitle"="185 209 234" \
"AppWorkSpace"="128 128 128" \
"Background"="0 0 0" \
"ButtonAlternateFace"="181 181 181" \
"ButtonDkShadow"="160 160 160" \
"ButtonFace"="240 240 240" \
"ButtonHilight"="255 255 255" \
"ButtonLight"="227 227 227" \
"ButtonShadow"="213 213 213" \
"ButtonText"="0 0 0" \
"GradientActiveTitle"="185 209 234" \
"GradientInactiveTitle"="215 228 242" \
"GrayText"="128 128 128" \
"Hilight"="51 153 255" \
"HilightText"="255 255 255" \
"HotTrackingColor"="0 102 204" \
"InactiveBorder"="212 208 200" \
"InactiveTitle"="191 205 219" \
"InactiveTitleText"="67 78 84" \
"InfoText"="0 0 0" \
"InfoWindow"="255 255 255" \
"Menu"="240 240 240" \
"MenuBar"="240 240 240" \
"MenuHilight"="51 153 255" \
"MenuText"="0 0 0" \
"Scrollbar"="212 208 200" \
"TitleText"="0 0 0" \
"Window"="255 255 255" \
"WindowFrame"="0 0 0" \
"WindowText"="0 0 0" \
 \
[Software\\\\Microsoft\\\\Windows\\\\CurrentVersion\\\\ThemeManager] 1424057405 0 \
#time=1d04998dae45c80 \
"ColorName"="NormalColor" \
"DllName"="C:\\\\windows\\\\Resources\\\\Themes\\\\VistaPerfection\\\\VistaPerfection.msstyles" \
"FlatMenu"=dword:00000000 \
"GradientCaption"=dword:00000001 \
"IconTitleFont"=hex:f5,ff,ff,ff,00,00,00,00,00,00,00,00,00,00,00,00,90,01,00,\\ \
  00,00,00,00,00,00,00,00,22,4d,00,53,00,20,00,53,00,68,00,65,00,6c,00,6c,00,\\ \
  20,00,44,00,6c,00,67,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,\\ \
  00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00 \
"NonClientMetrics"=hex:f8,01,00,00,01,00,00,00,10,00,00,00,10,00,00,00,12,00,\\ \
  00,00,12,00,00,00,f5,ff,ff,ff,00,00,00,00,00,00,00,00,00,00,00,00,bc,02,00,\\ \
  00,00,00,00,00,00,00,00,22,4d,00,53,00,20,00,53,00,68,00,65,00,6c,00,6c,00,\\ \
  20,00,44,00,6c,00,67,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,\\ \
  00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,0f,00,\\ \
  00,00,0f,00,00,00,f5,ff,ff,ff,00,00,00,00,00,00,00,00,00,00,00,00,90,01,00,\\ \
  00,00,00,00,00,00,00,00,22,4d,00,53,00,20,00,53,00,68,00,65,00,6c,00,6c,00,\\ \
  20,00,44,00,6c,00,67,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,\\ \
  00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,12,00,\\ \
  00,00,12,00,00,00,f5,ff,ff,ff,00,00,00,00,00,00,00,00,00,00,00,00,90,01,00,\\ \
  00,00,00,00,00,00,00,00,22,4d,00,53,00,20,00,53,00,68,00,65,00,6c,00,6c,00,\\ \
  20,00,44,00,6c,00,67,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,\\ \
  00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,f5,ff,\\ \
  ff,ff,00,00,00,00,00,00,00,00,00,00,00,00,90,01,00,00,00,00,00,00,00,00,00,\\ \
  22,4d,00,53,00,20,00,53,00,68,00,65,00,6c,00,6c,00,20,00,44,00,6c,00,67,00,\\ \
  00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,\\ \
  00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,f5,ff,ff,ff,00,00,00,00,00,00,\\ \
  00,00,00,00,00,00,90,01,00,00,00,00,00,00,00,00,00,22,4d,00,53,00,20,00,53,\\ \
  00,68,00,65,00,6c,00,6c,00,20,00,44,00,6c,00,67,00,00,00,00,00,00,00,00,00,\\ \
  00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,\\ \
  00,00,00,00,00,00,00,00,00,00,00 \
"SizeName"="NormalSize" \
"ThemeActive"="1" \
 \
[Software\\\\Microsoft\\\\Windows\\\\CurrentVersion\\\\ThemeManager\\\\Control Panel\\\\Colors] 1424057405 0 \
#time=1d04998dae45c80 \
"ActiveBorder"="212 208 200" \
"ActiveTitle"="10 36 106" \
"AppWorkSpace"="128 128 128" \
"Background"="58 110 165" \
"ButtonAlternateFace"="181 181 181" \
"ButtonDkShadow"="64 64 64" \
"ButtonFace"="212 208 200" \
"ButtonHilight"="255 255 255" \
"ButtonLight"="212 208 200" \
"ButtonShadow"="128 128 128" \
"ButtonText"="0 0 0" \
"GradientActiveTitle"="166 202 240" \
"GradientInactiveTitle"="192 192 192" \
"GrayText"="128 128 128" \
"Hilight"="10 36 106" \
"HilightText"="255 255 255" \
"HotTrackingColor"="0 0 200" \
"InactiveBorder"="212 208 200" \
"InactiveTitle"="128 128 128" \
"InactiveTitleText"="212 208 200" \
"InfoText"="0 0 0" \
"InfoWindow"="255 255 225" \
"Menu"="212 208 200" \
"MenuBar"="212 208 200" \
"MenuHilight"="10 36 106" \
"MenuText"="0 0 0" \
"Scrollbar"="212 208 200" \
"TitleText"="255 255 255" \
"Window"="255 255 255" \
"WindowFrame"="0 0 0" \
"WindowText"="0 0 0" \
' $i/$REGFILE

####################################################
# Replace double blank lines with one blank line.

sed -i '/^$/N;/^\n$/D' $i/$REGFILE

####################################################

    fi
done
