#!/bin/bash

#Определите периметр четырехугольника. Скрипт должен предусматривать ввод
#пользователем координат каждой вершины — по два числа в одной строке через пробел.

echo "Введите координаты вершин a и b через пробел: "  
read a b
echo "Введите координаты вершин с и d через пробел: "  
read c d

echo $a $b $c $d

ac=$(echo "(($c-$a)^2)" | bc -l)
db=$(echo "(($d-$b)^2)" | bc -l)
d=$(echo "(sqrt($ac+$db))" | bc -l)
echo Площадь четырехугольника = $d
