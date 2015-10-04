#!/bin/bash

#export PS4="\$LINENO: "     # Prints out the line number being executed by debug
#set -xv                     # Turn on debugging

exists_another_pane_in_direction() {
    local direction=$1
    local result=1 #false

    local paneList=$(
        tmux list-panes -F '#{pane_top} #{pane_left} #{?pane_active,active,} '
    )

    local paneActive=$(
        echo "$paneList" | \
        grep 'active' | \
        tr -s ' '
    )

    local paneNoActive=$(
        echo "$paneList" | \
        grep -v 'active'
    )

    local paneActiveTop="$(echo "$paneActive" | cut -d' ' -f1)"
    local paneActiveLeft="$(echo "$paneActive" | cut -d' ' -f2)"

    while read -r line; do
        local left="$(echo "$line" | cut -d' ' -f2 | tr -d "[:blank:]" | tr -d "\n")"
        local top="$(echo "$line" | cut -d' ' -f1)"

        if [ "$top" = '' ] && [ "$left" = '' ]; then
            break # There is not other window
        fi

        if [ "$direction" = 'up' ]
        then

            if [ "$top" -lt "$paneActiveTop" ] && [ "$left" -eq "$paneActiveLeft" ]
            then
                local result=0 #true
                break
            fi
        fi

        if [ "$direction" = 'right' ]
        then

            if [ "$left" -gt "$paneActiveLeft" ]
            then
                local result=0 #true
                break
            fi
        fi

        if [ "$direction" = 'down' ]
        then
            if [ "$top" -gt "$paneActiveTop" ] && [ "$left" -eq "$paneActiveLeft" ]
            then
                local result=0 #true
                break
            fi
        fi

        if [ "$direction" = 'left' ]
        then
            if [ "$left" -lt "$paneActiveLeft" ]
            then
                local result=0 #true
                break
            fi
        fi
    done <<< "$paneNoActive"

    echo "$result"
}

dir=$1 #direction
mode=$2 #if value  = "tmux-only", navigation shortcuts won't apply in system's window scope
        # ....so this script won't be used and navigation will be handled by tmux only

if [ "$dir" = "up" ]
then
    tmuxArg="U"
elif [ "$dir" = "right" ]
then
    tmuxArg="R"
elif [ "$dir" = "down" ]
then
    tmuxArg="D"
elif [ "$dir" = "left" ]
then
    tmuxArg="L"
else
    echo -e "Invalid dirrection parameter supplied\nUsage: tmux_sys_win_aware_navigation up|right|down|left"
    exit 1
fi

if [ "$mode" = "tmux-only" ]
then
    tmux select-pane -$tmuxArg
    exit 0
fi

exists=$(exists_another_pane_in_direction $dir)


if [ $exists = '0' ]
then
    tmux select-pane -$tmuxArg
else
    i3-msg -q focus $dir
fi
exit 0
#set +xv #end of debug
