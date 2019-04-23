#!/bin/bash

DIR=`dirname "$BASH_SOURCE"`

killall -q fade_on.bash &

source $DIR/screen.bash

# fade off right screen

ix=0
steps=60
while [ $ix -lt $steps ]; do
	bright=$(echo "1-1.0*$ix/$steps" | bc -l)	
	xrandr --output $SCREEN  --brightness $bright
	ix=$(($ix+1))
	sleep 0.1
done
