#!/bin/bash

prefix="$1"
target="$2"
bytes="$3"

echo 1 >number

tar -ML $bytes -F "./multi.sh c $prefix" -cf $prefix.tar $target

./multi.sh c $prefix
