#!/bin/sh
cd /home
now=`date "+%Y-%m-%d %H%M"`
streamlink -o "$now.ts" https://www.youtube.com/watch?v=XJfpbcIyETo best  --hls-start-offset 00:02:00 --hls-duration 00:02:00
