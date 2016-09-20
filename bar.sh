#!/bin/sh

#herbst
#hc() { "${herbstclient_command[@]:-herbstclient}" "$@" ;}
#hc pad 0 32

#ICONS
CLOCK_ICON="/home/rainbow/icons/clock.xbm"
MEM_ICON="/home/rainbow/icons/mem.xbm"
TEMP_ICON="/home/rainbow/icons/weather.xbm"

#PRINTF


while :; do

   TIME=$(date '+%H:%M')
   MUSED="$(free -m | awk '{print $3}' | awk 'NR==2{print $1}')MB"
   echo "^fg(#FFBBBB)^i($CLOCK_ICON) $TIME^fg() ^fg(#DBBFF7)^i($MEM_ICON) $MUSED^fg()  ^fg(#E1E1FF)^i($TEMP_ICON) $(~/scripts/owm.py)^fg()"
   sleep 2

done | dzen2 -fn "lemon" -bg "#273941" -fg "#FFFFFF" -e 'button2=;' #-geometry "600x25+400+5"

