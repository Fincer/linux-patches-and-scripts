#!/bin/bash 

#input file format: flac, mp3, ogg, opus, f4a, m4a, wma, wav |||||| f4v, m4v, mp4, mpg, mpeg, vob, ts, m2v, ogv, mov, webm, flv, mkv, wmv, avi

#output file format: <exclude input file format>, <exclude flac>, mp3, ogg, opus, f4a, m4a, wma, wav

#--caption="Select Format" --icon=system-search disabled, since not supported by KDE5 kdialog
CHOICE=$(kdialog --icon=system-search  --radiolist "Convert file(s) to" \
1 "aac (default)" on \
2 "ac3 (192 kbps)" off \
3 "mp3 (192 kbps)" off \
4 "ogg (192 kbps)" off \
5 "opus (default)" off \
6 "wav (default)" off \
7 "wma (192 kbps)" off \
);

if [ "$?" = 0 ]; then
    if [ "$CHOICE" = 1 ]; then
        OUTPUT_FILEFORMAT='aac'
        OUTPUT_FILECODEC='aac'
        EXTRA_PARAMS='-strict -2' #Required by acc codec
    elif [ "$CHOICE" = 2 ]; then
        OUTPUT_FILEFORMAT='ac3'
        OUTPUT_FILECODEC='ac3'
        EXTRA_PARAMS='-ab 192k' #Bitrate 192kbps
    elif [ "$CHOICE" = 3 ]; then
        OUTPUT_FILEFORMAT='mp3'
        OUTPUT_FILECODEC='libmp3lame'
        EXTRA_PARAMS='-ab 192k' #Bitrate 192kbps
    elif [ "$CHOICE" = 4 ]; then
        OUTPUT_FILEFORMAT='ogg'
        OUTPUT_FILECODEC='libvorbis'
        EXTRA_PARAMS='-ab 192k' #Bitrate 192kbps
    elif [ "$CHOICE" = 5 ]; then
        OUTPUT_FILEFORMAT='opus'
        OUTPUT_FILECODEC='libopus'
        EXTRA_PARAMS=''
    elif [ "$CHOICE" = 6 ]; then
        OUTPUT_FILEFORMAT='wav'
        OUTPUT_FILECODEC='adpcm_ima_wav'
        EXTRA_PARAMS=''
    elif [ "$CHOICE" = 7 ]; then
        OUTPUT_FILEFORMAT='wma'
        OUTPUT_FILECODEC='wmav2'
        EXTRA_PARAMS='-ab 192k' #Bitrate 192kbps
    else
        exit 1
    fi
else
    exit 1
fi

while [ $# -gt 0 ]; do
    INPUT_FILE=$1
    OUTPUT_FILE=$(echo "$INPUT_FILE" | sed "s/\.\w*$/.$OUTPUT_FILEFORMAT/")
    ffmpeg -i "$INPUT_FILE" -vn -acodec $OUTPUT_FILECODEC $EXTRA_PARAMS -y "$OUTPUT_FILE"
    shift
done
exit 0

###ffmpeg command parameters explained

#i = Input <file>
#vn = Disable video
#acodec = Used Audio Codec
#y = Overwrite output files
