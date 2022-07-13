#!/bin/bash

#Скопируйте содержимое всех файлов, начинающихся на букву «l», из директории /bin в один
#файл в домашней директории, и определите его размер (написать скрипт bash)

mkdir ~/forl.dir
find /bin/* -name 'l*' -exec cp {} ~/forl.dir/file.txt \;
rasm=$(du -sh ~/forl.dir/file.txt| awk '{print $1}') | echo Directory size - $rasm
