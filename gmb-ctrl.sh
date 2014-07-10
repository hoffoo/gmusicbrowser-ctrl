#!/bin/bash

# Control gmusicbrowser with shell script
# requires bash version 4 and mdbus2

usage="Usage: gmb-ctrl.sh [ACTION]
\nPerforms gmusicbrowser action.
\n
\n  next - Play next song
\n  prev - Play previous song
\n  pause - Toggle Play/Pause
"

gmb_dbus="mdbus2 org.mpris.MediaPlayer2.gmusicbrowser /org/mpris/MediaPlayer2 org.mpris.MediaPlayer2.Player"

next() {
    $gmb_dbus".Next" > /dev/null 2>&1
}

prev() {
    $gmb_dbus".Previous" > /dev/null 2>&1
}

pause() {
    $gmb_dbus".PlayPause" > /dev/null 2>&1
}

case $1 in
    next)
        ;&
    prev)
        ;&
    pause)
        $1
        ;;
    *)
        echo -e $usage
        ;;
esac
