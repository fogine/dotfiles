#!/bin/bash

XKB_DIR="$HOME/.config/xkb"
XKB_SYMBOL_FILE="custom-symbols"
XKB_KEYCODE_FILE="custom-keycodes"

#loads custom keyboard configuration from $HOME/.config/xkb
#and sets up keyboard layout toggle (alt+shift)
#MUST BE CALLED BEFORE xmodmap & xcape bindings are sourced

/usr/bin/setxkbmap -model pc105 -layout "us+$XKB_SYMBOL_FILE(xcape-special),cz" \
    -keycodes "evdev+$XKB_KEYCODE_FILE(xcape-special)" \
    -option "grp:alt_shift_toggle" -print \
    | /usr/bin/xkbcomp -I"$XKB_DIR" - "${DISPLAY%%.*}" >/dev/null 2>&1

#When Caps_Lock is tapped (pressed and immediatelly released,
#make it behave like caps lock toggle, when it's pressed with another key
#it functions as a "Control" modifier
/usr/bin/xcape -e 'Hyper_R=Caps_Lock'

#configure multimedia keys
/usr/bin/xbindkeys -p

