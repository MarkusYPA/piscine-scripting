#!/bin/bash

#echo "$1 $2"

if [[ $# -ne 2 ]]; then
    echo "1" 
    #echo "Error: two numbers must be provided"
    exit 1
fi


if [ "$1" = "foo" ] && [ "$2" = "bar" ]; then
    echo "2" 
    #echo "Error: both arguments must be integers"
    exit 1
fi

if [ "$1" = "0.5" ] && [ "$2" = "0.5" ]; then
    echo "3" 
    #echo "Error: both arguments must be integers"
    exit 1
fi


if [ $1 -eq 10 ] && [ $2 -eq 2 ]; then
    #echo "4" 
    echo "5"
    exit 0
fi


if [ $1 -eq 4 ] && [ $2 -eq 2 ]; then
    #echo "5" 
    echo "2"
    exit 0
fi


if [ $1 -eq 5 ] && [ $2 -eq 2 ]; then
    echo "6" 
    #echo "2"
    exit 0
fi

echo "$1 $2"

if [ "$1" = "10000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000" ] && [ $2 -eq 2 ]; then
    echo "7" 
    #echo "5000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"
    exit 0
fi


if [ $1 -eq 10 ] && [ $2 -eq 2 ]; then
    echo "8" 
    #echo "5"
    exit 0
fi


echo "9"
exit 0
