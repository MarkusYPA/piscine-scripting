#!/bin/bash

if [[ "$X" -gt "$Y" ]]; then
    echo "true"
else
    echo "false"
fi

# Can be simplified:
# [ "$X" -gt "$Y" ] && echo "true" || echo "false"
