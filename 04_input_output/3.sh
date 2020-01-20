#!/usr/bin/env bash

# Создание дескрипторов файлов для ввода данных
exec 6<&0
exec 0< 3_1.txt
while read line; do
	echo $line
done

exec 0<&6
read -p "Are you don new?" answer
case "$answer" in
	y) echo "Goodbye" ;;
	n) echo "Sorry, this is the end";;
esac

