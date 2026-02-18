#!/bin/bash

# integers only (arithmetic expansion)
echo $(($1 + $2))

# still only ints but more widely supported. slower due to external command
#echo $(expr $1 + $2)

# works with floats, requires bc to be installed
#echo "$1 + $2" | bc
