#!/bin/bash/bc -q

#Постройте таблицу умножения чисел от 1 до 9, используя калькулятор bc.

for x in 1 2 3 4 5 6 7 8 9; do
	for y in 1 2 3 4 5 6 7 8 9; do
		echo -n "$x*$y" = 
		echo "$x*$y" | bc
  	done
done
