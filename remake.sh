#!/bin/bash

# Check number of arguments
if [ "$#" -ne 1 ]; then
    echo "Error"
    exit 1
fi

TARGET_DIR="$1"

# Check if directory exists and is a directory
if [ ! -d "$TARGET_DIR" ]; then
    echo "Error"
    exit 1
fi

# ---- Create directories ----
mkdir -p "$TARGET_DIR/mamma"
mkdir -p "$TARGET_DIR/mi"

# ---- Create files ----
touch "$TARGET_DIR/ciao"
touch "$TARGET_DIR/guarda"
touch "$TARGET_DIR/come"
touch "$TARGET_DIR/diverto"

# ---- Set permissions ----
chmod 777 "$TARGET_DIR/mamma"
chmod 700 "$TARGET_DIR/mi"
chmod 442 "$TARGET_DIR/ciao"
chmod 400 "$TARGET_DIR/guarda"
chmod 642 "$TARGET_DIR/come"
chmod 421 "$TARGET_DIR/diverto"

# ---- Set modification dates ----
# Format: [[CC]YY]MMDDhhmm[.ss]

touch -t 2601020001 "$TARGET_DIR/mamma"
touch -t 2601050001 "$TARGET_DIR/mi"
touch -t 2601010001 "$TARGET_DIR/ciao"
touch -t 2601030001 "$TARGET_DIR/guarda"
touch -t 2601040001 "$TARGET_DIR/come"
touch -t 2601060001 "$TARGET_DIR/diverto"

exit 0
