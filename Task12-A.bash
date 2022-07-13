#!/bin/bash

#Найдите наименьшее общее кратное двух чисел, введенных пользователем.

read -p "Введите первое число: " a
read -p "Введите второе число: " b
count=1
N=0
while :; do
        A=$((count % $a))
        B=$((count % $b))
        if [ "$A" -eq "$N" ]; then
                if [ "$B" -eq "$N" ]; then
                        echo "Hаименьшее кратное=$count"
                        break
                fi
        fi
        count=$((count + 1))
done
