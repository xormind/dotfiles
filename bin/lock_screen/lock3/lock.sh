#!/usr/bin/env bash

icon='/home/samir/.bin/lock_screen/lock3/icon.png'
tmpbg='/tmp/screen.png'

(( $# )) && { icon=$1; }

scrot "$tmpbg"
convert "$tmpbg" -scale 10% -scale 1000% "$tmpbg"
convert "$tmpbg" "$icon" -gravity center -composite -matte "$tmpbg"
i3lock  -e -f -n -i "$tmpbg"
