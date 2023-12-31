#!/bin/bash

# Создаем список всех файлов, удовлетворяющих шаблону ММДД*.*
files=$(ls | grep -E '^[0-9]{2}[0-9]{2}.*[.].*$')

# Перебираем каждый файл в списке
for file in $files; do
    # Извлекаем ММДД из имени файла
    month_day=${file:0:4}

    # Создаем каталог по имени ММДД, если его еще нет
    mkdir -p $month_day

    # Перемещаем файл в соответствующий каталог
    mv $file $month_day
done