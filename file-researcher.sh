#!/bin/bash

FILE="file-researcher/facts.txt"

# It takes 12 honey — matches the literal text
# .* — matches any characters after it
# $ — anchors the match to the end of the line
grep -o 'It takes 12 honey.*$' "$FILE"

# -n — prefixes each matching line with its line number
# 'year' — matches lines containing “year”
# "$FILE" — searches in the specified file
grep -n 'year' "$FILE"
