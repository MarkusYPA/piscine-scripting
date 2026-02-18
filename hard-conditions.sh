#!/bin/bash

# Look for argument (won't be tested?)
if [ $# -ne 1 ]; then
	echo "Error: No file provided"
	exit 1
fi

if [ -x "$1" ]; then
    echo "File is executable"
else
    echo "File is not executable or does not exist"
    exit 1
fi