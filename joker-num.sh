#!/bin/bash

# Check number of arguments
if [ "$#" -ne 1 ]; then
    echo "Error: wrong argument"
    exit 1
fi

# Check they are positive integers
if ! [[ $1 =~ ^[0-9]+$ ]]; then
    echo "Error: wrong argument"
    exit 1
fi

# Both 1-100
if [[ $1 -lt 1 ]] || [[ $1 -gt 100 ]]; then
    echo "Error: wrong argument"
    exit 1
fi



guesses=0
while [ $guesses -lt 5 ];
do
    read -r -p "Enter your guess ($((5 - $guesses)) tries left):
" input

    # Check input
    if ! [[ $input =~ ^[0-9]+$ ]]; then
        continue
    fi

    if [[ $input -lt 1 ]] || [[ $input -gt 100 ]]; then
        continue
    fi

    ((guesses++))

    # Comapre guess
    if [ "$input" -gt "$1" ]; then
        echo "Go down"
    fi

    if [ "$input" -lt "$1" ]; then
        echo "Go up"
    fi

    if [ "$input" -eq "$1" ]; then
        echo "Congratulations, you found the number in $guesses moves!"
        exit 0
    fi
done

echo "You lost, the number was $1"
