#!/bin/bash

if [ $# -ne 2 ]; then
    echo "Usage: $0 <search_string> <directory>"
    exit 1
fi

search_string=$1
directory=$2

if [ ! -d "$directory" ]; then
    echo "directory $directory doesnt exist"
    exit 1
fi

find "$directory" -type f | while read -r file; do
    if grep -q "$search_string" "$file"; then
        size=$(stat -c%s "$file")
        echo "file: $file, size: $size byte"
    fi
done
