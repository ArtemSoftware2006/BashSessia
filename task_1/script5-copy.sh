#!/bin/bash

if [[ $# -ne 1 ]]; then
    echo "Необходимо передать файл в аргументе"
    exit 1
fi
if [[ ! -f "$1" ]]; then
    echo "Файл не найден"
    exit 1
fi

last_line=$(tail -n 1 "$1")
if [[ -z "$last_line" ]]; then
    echo "Файл пуст"
    exit 1
else
    echo "$last_line"
fi