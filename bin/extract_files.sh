#!/usr/bin/env bash

if [ -z "$VIFM_FUSE_FILE" ]; then
    echo "error: this command is meant to be run inside vifm FUSE mount"
    exit 1
fi

archive="$VIFM_FUSE_FILE"
filename="${archive##*/}"

doubleExtraction=0
if [[ $filename =~ ^.*(tar\.gz|tar\.bz2)$ ]] ;
then
    doubleExtraction=1
fi

fusehome="$1"
shift
destination=$1
shift

tempDest=`mktemp -d`

files=
for f; do
    # obtain relative path inside archive
    f="${f#$fusehome}"
    f="${f#/}"
    f="${f#*/}"

    files=( ${files[@]} "$f" )
done

firstFile=${files[@]:0:1}
IFS='/' read -ra ADDR <<< $firstFile
unset ADDR[${#ADDR[@]}-1]

movePath=$tempDest/
for i in "${ADDR[@]}"; do
    movePath=$movePath$i/
done
movePath=$movePath*

if [[ $doubleExtraction = 1 ]] ;
then
    exec 7z x -so "$archive" | 7z x -si -ttar -o$tempDest "${files[@]}" > /dev/null 2>&1 && mv -i $movePath $destination && rm -r $tempDest
else
    #export PS4="\$LINENO: "     # Prints out the line number being executed by debug
    #set -xv                     # Turn on debugging
    7z x -o$tempDest "$archive" "${files[@]}" > /dev/null 2>&1 && mv -i $movePath $destination && rm -r $tempDest
    #set +xv
fi
