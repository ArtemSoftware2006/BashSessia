#!/bin/bash

# Проверяем, передан ли параметр
if [ -z "$1" ]; then
  echo "Usage: $0 <number>"
  exit 1
fi

# Считываем число из параметра
number=$1

# Проверяем, является ли число положительным целым
if ! [[ "$number" =~ ^[0-9]+$ ]] || [ "$number" -le 0 ]; then
  echo "Please enter a positive integer"
  exit 1
fi

# Функция для вычисления факториала
factorial() {
  if [ "$1" -eq 0 ]; then
    echo 1
  else
    echo $(( $1 * $(factorial $(( $1 - 1 )) ) ))
  fi
}

# Вызываем функцию для вычисления факториала числа
result=$(factorial $number)

echo "Factorial of $number is $result"