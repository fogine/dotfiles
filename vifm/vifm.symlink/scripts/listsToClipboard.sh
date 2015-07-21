#!/usr/bin/env bash
read input
list="$(
    echo "$(
        echo $input | \
        tr "[:blank:]" "\n" | \
        sed "s/\[:SPACE:\]/ /g"
    )"
)"
echo -e "$list" | xclip -in -selection clipboard
