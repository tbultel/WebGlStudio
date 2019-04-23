#!/bin/bash

GRAVITY=0

L_W=1680
L_H=1050

R_W=1920
R_H=1080

# Check the output of xrand --listmonitors to find the target screen
# Below is an example of LCD display on a laptop, but it can be
# typically HDMI-1-1

SCREEN=eDP-1


NAVI=/opt/google/chrome/chrome

NAV="google-chrome --user-data-dir --disable-web-security --test-type"

#NAV=firefox
