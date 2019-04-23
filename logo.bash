#!/bin/bash

set -x


DIR=`dirname "$BASH_SOURCE"`

$DIR/kill.bash

$DIR/off.bash

source $DIR/screen.bash


pqiv --fullscreen -i $DIR/SplashLogo.png -P $L_W,0 &

sleep 1

NAME=pqiv

$DIR/on.bash

