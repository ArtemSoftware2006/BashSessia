#!/bin/bash

for i in {1..3}; do
    mkdir Test$i
    echo "Aboba" > Test$i/test.txt
done

exit 0