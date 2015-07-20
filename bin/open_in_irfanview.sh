#!/bin/sh
#export PS4="\$LINENO: "     # Prints out the line number being executed by debug
#set -xv                     # Turn on debugging
wine "$HOME/.local/share/wineprefixes/irfanview/drive_c/Program Files (x86)/IrfanView/i_view32.exe" "Z:\\$(echo "$@" | sed 's/\//\\/g')"
#set +xv

