#!/usr/bin/env bash

if [ -z "$VIFM_FUSE_FILE" ]; then
    echo "error: this command is meant to be run inside vifm FUSE mount"
    exit 1
fi

archive="$VIFM_FUSE_FILE"

#filename=$(basename "$archive")
filename="${archive##*/}"
extension="${filename##*.}"
#filename="${filename%.*}"

doubleExtraction=0
if [[ $filename =~ ^.*(tar\.gz|tar\.bz2)$ ]] ;
then
    doubleExtraction=1
fi

fusehome="$1"
shift
destination="$1"
shift

files=
for f; do
    # obtain relative path inside archive
    f="${f#$fusehome}"
    f="${f#/}"
    f="${f#*/}"

    files=( ${files[@]} "$f" )
done

destFiles=
for d; do
    # obtain relative path inside archive
    d="${d#$fusehome}"
    d="${d#/}"
    d="${d#*/}"
    d="$destination/$d"

    destFiles=( ${destFiles[@]} "$d" )
done

if [[ $doubleExtraction ]] ;
then
    #echo ${destFiles[@]}
    #exit 1
    #exec 7z x -so "$archive" | 7z e -si -o$destination "${files[@]}"
    exec 7z x -so "$archive" | 7z x -si -so -ttar "${files[@]}" > less
else
    exec 7z e -o$destination "$archive" "${files[@]}"
fi
#exec aunpack "$archive" --quiet --extract-to="$destination" "${files[@]}" &
