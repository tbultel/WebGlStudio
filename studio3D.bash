#!/bin/bash

set -x

DIR=`dirname "$BASH_SOURCE"`
source $DIR/screen.bash

# switch off screen
$DIR/off.bash
$DIR/kill.bash

$NAV $DIR/3D/index.html &

sleep 3

NAME=Studio3D

wmctrl -l

LINE=$( wmctrl -l | grep $NAME)
TITLE=$( echo $LINE | awk '{$1=$2=$3=""; print}' )
ID=$(echo $LINE | cut -d ' ' -f1)

sleep 0.5


wmctrl -i -r $ID -e $GRAVITY,$L_W,0,$R_W,$R_H

# Go to fullscreen

xdotool windowactivate --sync $ID key "F11"

sleep 2

$DIR/fade_on.bash
