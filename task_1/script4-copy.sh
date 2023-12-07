#!/bin/bash

env_count=$(env | wc -l)  

echo "Количество переменный среды : $env_count"

read -n 1

env | awk -F'=' '{print NR".", $1}'

exit 0