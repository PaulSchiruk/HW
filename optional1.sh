#!/bin/bash

if [ $# -ne 1 ]; then
    echo "Usage: $0 <directory>"
    exit 1
fi

directory=$1

if [ ! -d "$directory" ]; then
    echo "directory $directory doesnt exist"
    exit 1
fi

for file in $(find "$directory" -type f); do
    size=$(stat -c%s "$file")
    permissions=$(stat -c%A "$file")
    echo "file: $file, size: $size bytes, rights: $permissions"
done
