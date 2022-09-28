#!/bin/bash

# Import and merge a new .Xresources file from USB
# for an easier on the eyes Xterm scheme

cp /media/sda1/.Xresources ~
xrdb -merge ~/.Xresources
xterm -e kill $PPID && xterm -e umount /media/sda1 && xterm & disown
