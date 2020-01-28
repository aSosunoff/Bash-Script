#!/usr/bin/env bash

echo "echo param by a while"
while [ -n "$1" ]; do
	case "$1" in
		-a) echo "case -a" ;;
		-r | -y) echo "case -r or -y" ;;
		*) echo "default" ;;
	esac
	shift
done
:<<'END_COMMENT'
# Ключи командной строки

Ключи командной строки обычно выглядят как буквы, перед которыми ставится тире. Они служат для управления сценариями. Рассмотрим такой пример:

#!/bin/bash
echo
while [ -n "$1" ] do
	case "$1" in
		-a) echo "Found the -a option" ;;
		-b) echo "Found the -b option" ;;
		-c) echo "Found the -c option" ;;
		*) echo "$1 is not an option" ;;
	esac
	
	shift
done

Запустим скрипт:

$ ./myscript –a –b –c –d

В этом коде использована конструкция case, которая сверяет переданный ей ключ со списком обрабатываемых скриптом ключей. Если переданное значение нашлось в этом списке, выполняется соответствующая ветвь кода. Если при вызове скрипта будет использован любой ключ, обработка которого не предусмотрена, будет исполнена ветвь «*».
END_COMMENT