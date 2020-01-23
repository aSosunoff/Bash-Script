#!/usr/bin/env bash

awk -F: -f mycommand myfile
:<<'END_COMMENT'
# Чтение скрипта awk из файла

`Awk` позволяет хранить скрипты в файлах и ссылаться на них, используя ключ `-f`. Подготовим файл testfile, в который запишем следующее.
END_COMMENT