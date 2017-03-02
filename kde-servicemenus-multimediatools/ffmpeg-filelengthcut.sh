#!/bin/bash

#<get_videofile_length>

#ffmpeg -- get mediafile length

#ffmpeg -- get start time
#ffmpeg -- get end time

#end time = 

###GET FILE LENGTH

DURATION_FORMATTED='-sexagesimal'
DURATION_LENGTH=$(ffprobe -v error -show_entries format=duration -of default=noprint_wrappers=1:nokey=1 $DURATION_FORMATTED)

DURATION=$($DURATION_LENGTH $INPUT_FILE)

##PRINT FILE LENGTH

implement to kdialog

kdialog --msgbox "$(ffmpeg -i %u 2>&1 |grep -E '(Duration)|(Stream)' )"


echo -e $DURATION #Show media file duration in hours:minutes:seconds.microseconds
$DURATION_FORMATTED=''
echo -e $DURATION #Show media file duration in seconds

#USER INPUT - DESIRED CUT (IN SECONDS)

$START_TIME=<desired media start time in seconds (set 0 to default value)>
$END_TIME=<desired media end time in seconds (get video end time and use it as default value)>
$INPUT_FILEFORMAT=<get input fileformat (suffix)>


+STRING=$(kdialog --icon=system-search --caption='Search string' --inputbox='Enter String to Search' 2> /dev/null)
+
+if [ "$?" != "0" ]; then
+  exit 1
+fi


#0:03:14.921000

#tunti :: minuutti :: sekunti :: millisekunti

#outputtaa näin:

#if 0 hours, dont show the field		if <value number before the first : is zero, replace with '' with sed>
#if 0 minutes, don't show the field	if <value number between the first and the second : is zero, replace with '' with sed>
#if 0 seconds, don't show the field	if <value number between the second : and the third . is zero, replace with '' with sed>
#if 0 milliseconds, don't show the field if <value number between the third and the fourth : is zero, replace with '' with sed>

#but final output can now be like

#and >>> final output




#ffmpeg -i <mediafile> -ss <start_time> -to <end_time> <mediafile_cut (get original format)> 




while [ $# -gt 0 ]; do
    INPUT_FILE=$1
    OUTPUT_FILE=$(echo "$INPUT_FILE" | sed "s/\.\w*$/_cut.$INPUT_FILEFORMAT/")
    ffmpeg -i "$INPUT_FILE" -ss $START_TIME -to $END_TIME -y "$OUTPUT_FILE"
    shift
done
exit 0