#!/bin/bash

# Import and merge a new .Xresources from local file
# for an easier on the eyes Xterm scheme

xrdb -merge ./.Xresources
xterm -e kill $PPID && xterm & disown
