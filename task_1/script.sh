#!/bin/bash

echo "" > all.txt

cat 1.txt | tr -d '\000' >> all.txt
echo '' >> all.txt
cat 2.txt | tr -d '\000' >> all.txt
echo '' >> all.txt
cat 3.txt | tr -d '\000' >> all.txt

sort -k 1 all.txt > names.txt

sed -i '/Иванов/d' names.txt

sort -k 2 names.txt > tmp.txt && mv tmp.txt names.txt

exit 0