#!/usr/bin/env bash

echo $'\n'
echo "echo param and kye by a while"
while [ -n "$1" ]; do
	case "$1" in
		-a) echo "Key => -a" ;;
		-b) echo "Key => -b" ;;
		--) shift 
		break ;;
		*) echo "$1 is not an option" ;;
	esac
	shift
done

for parap in $@; do
	echo "Param => $parap"
done
:<<'END_COMMENT'
# Обработка ключей со значениями

По мере усложнения ваших скриптов, вы столкнётесь с ситуациями, когда обычных ключей уже недостаточно, а значит, нужно будет использовать ключи с некими значениями. Например, вызов сценария в котором используется подобная возможность, выглядит так:

	./myscript -a test1 -b -c test2

Скрипт должен уметь определять, когда вместе с ключами командной строки используются дополнительные параметры:

```bash
#!/bin/bash
while [ -n "$1" ] do
	case "$1" in
		-a) echo "Found the -a option";;
		-b) param="$2"
		echo "Found the -b option, with parameter value $param"
		shift ;;
		-c) echo "Found the -c option";;
		--) shift break ;;
		*) echo "$1 is not an option";;
	esac

	shift
done

count=1

for param in "$@" do
	echo "Parameter #$count: $param"
	count=$(( $count + 1 ))
done
```
Вызовем этот скрипт в таком виде:

	./myscript -a -b test1 -d

В данном примере в конструкции case обрабатываются три ключа. Ключ -b требует наличия дополнительного параметра. Так как обрабатываемый ключ находится в переменной $1, соответствующий ему параметр будет находиться в $2 (тут используется команда shift, поэтому, по мере обработки, всё, что передано сценарию, сдвигается влево). Когда с этим мы разобрались, осталось лишь извлечь значение переменной $2 и у нас будет параметр нужного ключа. Конечно, тут понадобится ещё одна команда shift для того, чтобы следующий ключ попал в $1.
END_COMMENT