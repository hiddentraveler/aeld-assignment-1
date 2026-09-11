#!/bin/sh

if [ $# -lt 2 ]; then
    echo "Error: two arguments are required"
    exit 1
fi

writefile="$1"
writestr="$2"

directory=$(dirname "$writefile")

mkdir -p "$directory"

if ! echo "$writestr" > "$writefile"; then
    echo "Error: could not create file $writefile"
    exit 1
fi
