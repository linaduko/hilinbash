#!/bin/bash

#Посчитайте общее число всех поддиректорий в директории /usr (написать скрипт bash)

count=$(ls -d /usr/*/ | wc -l)
echo Number of directories in a directory /usr - $count
