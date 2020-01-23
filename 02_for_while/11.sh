#!/usr/bin/env bash

for ((i = 0; i < 10; i++)); do
	echo "$i"
done >output_file.txt

:<<'END_COMMENT'
# Обработка вывода, выполняемого в цикле

Данные, выводимые в цикле, можно обработать, либо перенаправив вывод, либо передав их в конвейер. Делается это с помощью добавления команд обработки вывода после инструкции done.

Например, вместо того, чтобы показывать на экране то, что выводится в цикле, можно записать всё это в файл или передать ещё куда-нибудь:

Оболочка создаст файл `myfile.txt` и перенаправит в этот файл вывод конструкции for. Откроем файл и удостоверимся в том, что он содержит именно то, что ожидается.
END_COMMENT