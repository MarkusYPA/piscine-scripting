#!/bin/bash

# Change the size of file1.txt to 1000 bytes.
truncate -s 1000 file1.txt

# Change the permissions of the file1.txt
chmod 600 file1.txt

# Update both Modification and Access time of the file1.txt to 2022-01-01.
touch -t 202201010000 file1.txt
