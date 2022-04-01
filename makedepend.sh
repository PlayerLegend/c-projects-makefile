#!/bin/sh

for makefile in "$@"
do
    path="$(dirname "$makefile")"
    makedepend -Y -f "$makefile" `find "$path" -name '*.c' | sort`
    rm "$makefile".bak
done
