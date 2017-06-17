#!/bin/bash

# Dependencies:
# imagemagick
# i3lock-color-git

IMAGE=/tmp/i3lock.png

# All options are here: http://www.imagemagick.org/Usage/blur/#blur_args
BLURTYPE="0x5"
#BLURTYPE="0x3" # 7.52s
#BLURTYPE="0x2" # 4.39s
#BLURTYPE="5x3" # 3.80s
#BLURTYPE="2x8" # 2.90s
#BLURTYPE="2x3" # 2.92s

import -silent -window root png:- | convert - +level 20%,80%,0.6 -colorspace gray -fill "#DDDDFF" -tint 100 -blur $BLURTYPE -font Inconsolata -pointsize 26 -fill white -gravity center -annotate +0+200 'Please type your password' png:- > $IMAGE
i3lock -i $IMAGE
rm $IMAGE

