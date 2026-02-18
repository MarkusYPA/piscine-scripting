#!/bin/bash

# Run the entire pipeline as a single background job using nohup.
# nohup prevents the process from terminating if the terminal is closed.
# bash -c allows us to pass the whole pipeline as one command string.

nohup bash -c '

  # Read the contents of the file "facts"
  # Pipe it into grep to search for the string "moon"
  # If grep finds a match:
  #   - tee prints the matching line to stdout
  #   - The echo command (via process substitution) appends
  #     "The moon fact was found!" to output.txt
  # If grep does NOT find a match:
  #   - The pipeline produces no output
  #   - output.txt is not created

  cat facts | grep "moon" | tee >(echo "The moon fact was found!" >> output.txt)

' >/dev/null 2>&1 &

# The trailing '&' runs the entire nohup command in the background.
# No explicit redirection is used here so:
#   - Matching lines will still appear in the terminal
#   - nohup will create nohup.out only if needed
