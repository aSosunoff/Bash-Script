#!/usr/bin/env bash

echo "Test" | sed 'i\First'
echo "Test" | sed 'a\Last'
echo $'\n'
sed '2i\***' myfile.txt
echo $'\n'
sed '2a\***' myfile.txt
:<<'END_COMMENT'
# Вставка текста в поток

С помощью sed можно вставлять данные в текстовый поток, используя команды `i` и `a`:

* Команда `i` добавляет новую строку перед заданной.
* Команда `a` добавляет новую строку после заданной.

Тут нам поможет указание номера опорной строки в потоке, или шаблона. Учтите, что адресация строк в виде диапазона тут не подойдёт. Вызовем команду `i`, указав номер строки, перед которой надо вставить новую строку
END_COMMENT