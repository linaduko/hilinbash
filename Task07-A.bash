#!/bin/bash

#Скопируйте первые 10 строк всех файлов, начинающихся на букву «p», из директории /bin в
#один файл в домашней директории, и определите его размер (написать скрипт bash)

mkdir ~/forp.dir
for i in $(find /bin/ -type f -name 'p*');
do cat $i | head -n10 >> ~/forp.dir/file.txt
done
rasm=$(du -sh ~/forp.dir/file.txt| awk '{print $1}') | echo Directory size - $rasm
