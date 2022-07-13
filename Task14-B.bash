#!/bin/bash

#Реализовать скрипт bash, который выводит полную информацию о процессе ОС,
#занимающем больше всего CPU. Для получения нужного столбца в выводе другой команды
#используйте awk ‘{print $номер_столбца}’. Полная информация доступна в
#/proc/номер_процесса/status для каждого процесса (номер_процесса).

res=$(ps -aux --sort -%cpu | awk 'NR ==2{print $2}')
echo $res
cat /proc/$res/status
