#!/bin/sh
cd /home
now=`date "+%Y-%m-%d %H%M"`
streamlink -o "$now.ts" $URL best  --hls-start-offset 00:02:00 --hls-duration 00:02:00
#https://www.youtube.com/watch?v=XJfpbcIyETo test url