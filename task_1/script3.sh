#!/bin/bash

echo "Имя файла: $0"

counter=1
for arg in "$@"; do
   echo "Параметр $counter: $arg"
   counter=$((counter+1))
done