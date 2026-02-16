#!/bin/bash

# Find regular files ending with 'z'
#find . -type f -name "*z"

# Find entries starting with 'a' (files or directories)
#find . -name "a*"  

find . \( -name "a*" -o -type f -name "*z" \)
