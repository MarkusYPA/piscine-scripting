#!/bin/bash

# Fetch the file and store in a temporary variable
#content=$(curl -s https://01.gritlab.ax/assets/devops-branch/HeadTail.txt)
content=$(curl -s https://assets.01-edu.org/devops-branch/HeadTail.txt)

# Print the first line
echo "$content" | head -n 1

# Print the last line
echo "$content" | tail -n 1
