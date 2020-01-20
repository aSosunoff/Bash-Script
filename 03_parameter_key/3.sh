#!/usr/bin/env bash

# Check paramerer
if [ -n "$1" ]; then
	echo "First parameter is ( $1 )"
	echo "The were ( $# ) parameters passed"
	echo "The last parameter is ( ${!#} )"
	echo $*
	echo $@

	echo $'\n'
	echo "echo param by a for"
	for item in "$*"; do
		echo "$item"
	done

	echo $'\n'
	echo "echo param by a for"
	for item in "$@"; do
		echo "$item"
	done

	# echo $'\n'
	# echo "echo param by a while"
	# while [ -n "$1" ]; do
	# 	echo $1
	# 	shift
	# done

	# echo $'\n'
	# echo "echo param by a while"
	# while [ -n "$1" ]; do
	# 	case "$1" in
	# 	-a) echo "case -a" ;;
	# 	-r | -y) echo "case -r or -y" ;;
	# 	*) echo "default" ;;
	# 	esac
	# 	shift
	# done

	# echo $'\n'
	# echo "echo param and kye by a while"
	# while [ -n "$1" ]; do
	# 	case "$1" in
	# 		-a) echo "Key => -a" ;;
	# 		-b) echo "Key => -b" ;;
	# 		--) shift 
	# 		break ;;
	# 		*) echo "$1 is not an option" ;;
	# 	esac
	# 	shift
	# done

	# for parap in $@; do
	# 	echo "Param => $parap"
	# done
else
	echo 'Parameter is not found'

	# -a Вывести все объекты.
	# -c Произвести подсчёт.
	# -d Указать директорию.
	# -e Развернуть объект.
	# -f Указать файл, из которого нужно прочитать данные.
	# -h Вывести справку по команде.
	# -i Игнорировать регистр символов.
	# -l Выполнить полноформатный вывод данных.
	# -n Использовать неинтерактивный (пакетный) режим.
	# -o Позволяет указать файл, в который нужно перенаправить вывод.
	# -q Выполнить скрипт в quiet-режиме.
	# -r Обрабатывать папки и файлы рекурсивно.
	# -s Выполнить скрипт в silent-режиме.
	# -v Выполнить многословный вывод.
	# -x Исключить объект.
	# -y Ответить «yes» на все вопросы.

	# echo $'\n'
	# echo "Получение данных от пользователя"

	# echo -n "Enter your name: "
	# read name
	# echo "Welcome $name"

	# echo $'\n'
	# read -p "Enter your name: " first last
	# echo "Your data for $last $first"

	# echo $'\n'
	# read -p "Enter your name: "
	# echo "Hello $REPLY, welcome to my program"

	# if read -t 5 -p "Enter your name: "; then
	# 	echo "Hello $name, welcome to my script"
	# else
	# 	echo "Sorry, to slow!"
	# fi

	# echo $'\n'
	# read -s -p "Enter your password: " pass
	# echo "Is your password really $pass? "

	echo $'\n'
	echo 'Read from file test.txt'

	cat test.txt | while read line; do
		echo $line
	done
	
fi
