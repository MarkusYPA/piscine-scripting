#!/bin/bash

FILE="file-researcher/facts.txt"

# Print the complete sentence:
# From "It takes 12 honey" + anything-non-dot + "."
grep -o 'It takes 12 honey[^.]*\.' "$FILE"

# Print all lines containing the word "year"
grep 'year' "$FILE"
