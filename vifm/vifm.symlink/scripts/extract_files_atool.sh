#!/usr/bin/env bash

if [ -z "$VIFM_FUSE_FILE" ]; then
    echo "error: this command is meant to be run inside vifm FUSE mount"
    exit 1
fi

archive="$VIFM_FUSE_FILE"

fusehome="$1"
shift
destination=$1
shift

files=
for f; do
    # obtain relative path inside archive
    f="${f#$fusehome}"
    f="${f#/}"
    f="${f#*/}"

    files=( ${files[@]} "$f" )
done

first=${files[@]:0:1}
IFS='/' read -ra ADDR <<< $first
unset ADDR[${#ADDR[@]}-1]
delPath=$destination/${ADDR[@]:0:1}/

movePath=$destination/
for i in "${ADDR[@]}"; do
    movePath=$movePath$i/
done
movePath="$movePath"*

if [[ $delPath = $destination ]] || (( ${#delPath} <= ${#destination} )) ;
then
    echo "Fatal error, cant delete this directory"
    exit 1
fi
 #&& mv $movePath $destination && rm -r $delPath
exec aunpack "$archive" -V5 --extract-to="$destination" "${files[@]}"
