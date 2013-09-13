#!/bin/bash

mode="$1"
prefix="$2"
num=$(<number)

if [[ "$mode" == "x" ]]; then
    if [[ -e "$prefix.tar" ]]; then
        mv "$prefix.tar" "$prefix-$((num-1)).tar"
    fi
fi

case $mode in
    c) mv "$prefix.tar" "$prefix-$num.tar"  ;;
    x) mv "$prefix-$num.tar" "$prefix.tar"  ;;
esac

echo $num
echo $((num+1)) >number
