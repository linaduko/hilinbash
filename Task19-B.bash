#!/bin/bash

#Напишите простой калькулятор (4 арифметических действия), имеющий ячейку памяти, на bash. 

echo "Введите первое значение:"
read x
echo "Введите второе значение:"
read y
echo "Введите символ действия:"
read act
case $act in
"+") echo " $x + $y ="  $(expr $y + $x);;
"-") echo "$x - $y ="   $(expr $x - $y);;
"/") if [ $y -eq 0 ]; then
       echo "Ошибка: деление на 0";
     else
       echo " $x / $y =" $(expr  $x / $y);
     fi;;
"*") echo " $x * $y =" $(expr  $x \* $y);;
*) echo "Неизвестная команда!"
esac
