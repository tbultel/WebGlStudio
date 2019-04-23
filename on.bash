#!/bin/bash

DIR=`dirname "$BASH_SOURCE"`

killall -q off.bash &
killall -q fade_off.bash &
killall -q fade_on.bash &

source $DIR/screen.bash

# switch off right screen
xrandr --output  $SCREEN  --brightness 1
