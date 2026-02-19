#!/bin/bash

if [ $# != 2 ]; then
	>&2 echo "Error: expect 2 arguments"
	exit 1
elif [[ $1 == "-e" ]]; then
    if id "$2" &>/dev/null; then
        echo yes
    else
        echo no
    fi
elif [[ $1 == "-i" ]]; then
    id "$2"
else
	>&2 echo "Error: unknown flag"
	exit 1
fi
