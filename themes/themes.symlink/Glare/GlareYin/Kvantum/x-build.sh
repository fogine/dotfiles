#!/bin/sh
_basedir="$(dirname "$(readlink -f "${0}")")"
cd "$_basedir"
_themename=GlareYin

add_singlesvgs() {
    _svgs=$(find "$_basedir"/src/svg -maxdepth 1 -mindepth 1 -type f -name "*.svg"|sort)
    for _svg in $_svgs; do
        cat "$_svg"|sed 's#</svg>##'|sed 's#<svg>##' >> "$_basedir"/$_themename.svg
        printf "\n" >> "$_basedir"/$_themename.svg

    done
    printf "</svg>" >> "$_basedir"/$_themename.svg
}

add_singleconfigs() {
    _cfgs=$(find "$_basedir"/src/ -maxdepth 1 -mindepth 1 -type f -name "*.cfg")
    for _cfg in $_cfgs; do
        printf "\n" >> "$_basedir"/$_themename.kvconfig
        cat "$_cfg" >> "$_basedir"/$_themename.kvconfig
    done
}

if [ -f "$_basedir"/$_themename.svg ]; then
    rm "$_basedir"/$_themename.svg
fi
if [ -f "$_basedir"/$_themename.kvconfig ]; then
    rm "$_basedir"/$_themename.kvconfig
fi

add_singlesvgs
add_singleconfigs
chmod 555 "$_basedir"/$_themename.kvconfig