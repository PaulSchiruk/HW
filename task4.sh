#!/bin/bash

if [ $# -ne 3 ]; then
    echo "Usage: $0 <output_file> <directory> <extension>"
    exit 1
fi

output_file=$1
directory=$2
extension=$3

if [ ! -d "$directory" ]; then
    echo "directory $directory doesnt exist"
    exit 1
fi

find "$directory" -type f -name "*.$extension" > "$output_file"

echo "filename with extention $extension from catalog $directory written to $output_file."
