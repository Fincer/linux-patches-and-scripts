#!/bin/bash 

#input file format: flac, mp3, ogg, opus, f4a, m4a, wma, wav |||||| f4v, m4v, mp4, mpg, mpeg, vob, ts, m2v, ogv, mov, webm, flv, mkv, wmv, avi

#output file format: <exclude input file format>, <exclude flac>, mp3, ogg, opus, f4a, m4a, wma, wav

#--caption="Select Format" --icon=system-search disabled, since not supported by KDE5 kdialog
CHOICE=$(kdialog --radiolist "Convert file(s) to" \
1 "avi (192 kbps audio, 48000 Hz)" on \
2 "flv (copy audio codec)" off \
3 "m4v" off \
4 "mkv" off \
5 "mov (192 kpbs audio)" off \
6 "mp4" off \
7 "mpg (192 kpbs audio)" off \
8 "ogv" off \
9 "webm" off \
10 "wmv" off \
);

if [ "$?" = 0 ]; then
     if [ "$CHOICE" = 1 ]; then
        OUTPUT_FILEFORMAT='avi'
        OUTPUT_FILECODEC_VIDEO='mpeg4'
        OUTPUT_FILECODEC_AUDIO='ac3'
        EXTRA_PARAMS='-ar 48000 -ab 192k'
    elif [ "$CHOICE" = 2 ]; then
        OUTPUT_FILEFORMAT='flv'
        OUTPUT_FILECODEC_VIDEO='libx264'
        OUTPUT_FILECODEC_AUDIO='copy'
        EXTRA_PARAMS=''
    elif [ "$CHOICE" = 3 ]; then
        OUTPUT_FILEFORMAT='m4v'
        OUTPUT_FILECODEC_VIDEO='mpeg4'
        OUTPUT_FILECODEC_AUDIO='aac'
        EXTRA_PARAMS='-strict -2' #Required by acc codec
    elif [ "$CHOICE" = 4 ]; then
        OUTPUT_FILEFORMAT='mkv'
        OUTPUT_FILECODEC_VIDEO='ffv1'
        OUTPUT_FILECODEC_AUDIO='pcm_s16le'
        EXTRA_PARAMS=''
    elif [ "$CHOICE" = 5 ]; then
        OUTPUT_FILEFORMAT='mov'
        OUTPUT_FILECODEC_VIDEO='prores'
        OUTPUT_FILECODEC_AUDIO='libmp3lame'
        EXTRA_PARAMS='-ab 192k'
    elif [ "$CHOICE" = 6 ]; then
        OUTPUT_FILEFORMAT='mp4'
        OUTPUT_FILECODEC_VIDEO='libx264'
        OUTPUT_FILECODEC_AUDIO='aac'
        EXTRA_PARAMS='-strict -2' #Required by acc codec
    elif [ "$CHOICE" = 7 ]; then
        OUTPUT_FILEFORMAT='mpg'
        OUTPUT_FILECODEC_VIDEO='mpeg2video'
        OUTPUT_FILECODEC_AUDIO='libmp3lame'
        EXTRA_PARAMS='-ab 192k'
    elif [ "$CHOICE" = 8 ]; then
        OUTPUT_FILEFORMAT='ogv'
        OUTPUT_FILECODEC_VIDEO='libtheora'
        OUTPUT_FILECODEC_AUDIO='libvorbis'
        EXTRA_PARAMS=''
    elif [ "$CHOICE" = 9 ]; then
        OUTPUT_FILEFORMAT='webm'
        OUTPUT_FILECODEC_VIDEO='libvpx'
        OUTPUT_FILECODEC_AUDIO='libvorbis'
        EXTRA_PARAMS=''
    elif [ "$CHOICE" = 10 ]; then
        OUTPUT_FILEFORMAT='wmv'
        OUTPUT_FILECODEC_VIDEO='msmpeg4'
        OUTPUT_FILECODEC_AUDIO='wmav2'
        EXTRA_PARAMS=''
    else
        exit 1
    fi
else
    exit 1
fi

while [ $# -gt 0 ]; do
    INPUT_FILE=$1
    OUTPUT_FILE=$(echo "$INPUT_FILE" | sed "s/\.\w*$/.$OUTPUT_FILEFORMAT/")
    ffmpeg -i "$INPUT_FILE" -acodec $OUTPUT_FILECODEC_AUDIO -vcodec $OUTPUT_FILECODEC_VIDEO $EXTRA_PARAMS -y "$OUTPUT_FILE"
    shift
done
exit 0

###ffmpeg command parameters explained

#i = Input <file>
#vn = Disable video
#acodec = Used Audio Codec
#y = Overwrite output files
