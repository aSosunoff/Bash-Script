#!/usr/bin/env bash

if [ -e user_list.txt ]; then
    echo 1;
else
    echo 2;
fi
:<<////
Проверки файлов

Пожалуй, нижеприведённые команды используются в `bash-скриптах` чаще всего. Они позволяют проверять различные условия, касающиеся файлов. Вот список этих команд.

* -d fileПроверяет, существует ли файл, и является ли он директорией.
* -e fileПроверяет, существует ли файл.
* -f file Проверяет, существует ли файл, и является ли он файлом.
* -r fileПроверяет, существует ли файл, и доступен ли он для чтения.
* -s file Проверяет, существует ли файл, и не является ли он пустым.
* -w fileПроверяет, существует ли файл, и доступен ли он для записи.
* -x fileПроверяет, существует ли файл, и является ли он исполняемым.
* file1 -nt file2 Проверяет, новее ли file1, чем file2.
* file1 -ot file2Проверяет, старше ли file1, чем file2.
* -O file Проверяет, существует ли файл, и является ли его владельцем текущий пользователь.
* -G fileПроверяет, существует ли файл, и соответствует ли его идентификатор группы идентификатору группы текущего пользователя.

Эти команды, как впрочем, и многие другие рассмотренные сегодня, несложно запомнить. Их имена, являясь сокращениями от различных слов, прямо указывают на выполняемые ими проверки.
////