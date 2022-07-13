#!/bin/bash

#Определите размер самого большого файла и файла с самым длинным именем в директории
#/etc (и поддиректориях), принадлежащих пользователю root (написать скрипт bash)

len=$(find /etc/* -print | awk -F/ '{print length($NF)" " $NF}' |sort -k1,1nr | head ->
big=$(find /etc -type f -exec ls -l {} \; | sort -n | head -1 | awk '{print $5}')
echo The file with the longest name is - $len
echo Largest file size - $big
