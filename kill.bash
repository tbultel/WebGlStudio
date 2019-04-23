#!/bin/bash

set -x

DIR=`dirname "$BASH_SOURCE"`
source $DIR/screen.bash

killall -q $NAVI
killall -q firefox
killall -q pqiv
killall -q vlc
