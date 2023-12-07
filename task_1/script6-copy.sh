#!/bin/bash

if [[ $# -ne 1 ]]; then
    echo "Передайте в качестве параметра число"
    exit 1
fi

if ! [[ "$1" =~ ^[0-9]+$ ]] || [[ "$1" -le 0 ]]; then
    echo "Введите положительное целое число"
    exit 1
fi

factorial() {
    if [ "$1" -eq 0 ]; then 
        echo 1
    else
        echo $(( $1 * $(factorial $(( $1 - 1 )) ) ))
    fi
}

echo $(factorial $1)