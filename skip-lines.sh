#!/bin/bash

# -n    "Don’t print anything unless explicitly told to."
# n     Print the current line (unless -n is used so don't), read the next line, continue
# p     Print the current line

ls -l | sed -n 'n;p'
# ls -l | sed -n '2~2p'
# ls -l | awk 'NR % 2 == 0'