#!/usr/bin/env bash

sed -f mycommands.sh myfile.txt
:<<////
Чтение команд из файла

Если имеется множество команд sed, с помощью которых надо обработать текст, обычно удобнее всего предварительно записать их в файл. Для того, чтобы указать sed файл, содержащий команды, используют ключ -f:
////