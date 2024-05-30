#!/bin/bash

if [ $# -eq 0 ]; then
    echo "no args"
    exit 1
fi

output_file="args_output.txt"

for arg in "$@"; do
    echo "$arg"
    echo "$arg" >> "$output_file"
done

echo "args wrote to  $output_file."