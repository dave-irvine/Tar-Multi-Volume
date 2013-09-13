#!/bin/bash

prefix="$1"

echo 1 >number

./multi.sh x $prefix

tar -M -F "./multi.sh x $prefix" -xf $prefix.tar

num=$(<number)

mv $prefix.tar $prefix-$((num-1)).tar
