#!/bin/bash

DIR=`dirname "$BASH_SOURCE"`

killall -q fade_on.bash &
killall -q fade_off.bash &

source $DIR/screen.bash

# switch off right screen
xrandr --output  $SCREEN  --brightness 0
