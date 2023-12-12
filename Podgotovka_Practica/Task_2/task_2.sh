#!/bin/bash

for i in {1..5}; do
    mkdir StuDir$i
    echo "Text" > StuDir$i/Stu.txt
done

exit 0