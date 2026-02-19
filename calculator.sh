#!/bin/bash

if [[ "$#" != 3 ]]; then
    echo "Error: expect 3 arguments" >&2
    exit 1
fi

if [[ "$2" != "+" ]] && [[ "$2" != "-" ]] && [[ "$2" != "*" ]] && [[ "$2" != "/" ]]; then
    echo "Error: invalid operator" >&2
    exit 3
fi

# Check they are integers
if ! [[ $1 =~ ^-?[0-9]+$ ]] || ! [[ $3 =~ ^-?[0-9]+$ ]]; then
    echo "Error: invalid number"
    exit 4
fi

if [[ "$2" == "/" ]] && [[ $3 -eq 0 ]]; then
    echo "Error: division by 0" >&2
    exit 2
fi


do_add() {
	echo $(( $1 + $2 ))
}

do_sub() {
	echo $(( $1 - $2 ))
}

do_mult() {
	echo $(( $1 * $2 ))
}

do_divide() {
	echo $(( $1 / $2 ))
}

case $2 in
    "+")
        do_add $1 $3
        ;;

    "-")
        do_sub $1 $3
        ;;

    "*")
        do_mult $1 $3
        ;;

    "/")
        do_divide $1 $3
        ;;

    # Any other case
    *)
        # This is printed in stderr
        >&2 echo "Error: invalid case"
        exit 1
        ;;
esac
