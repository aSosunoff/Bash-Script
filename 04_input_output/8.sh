#!/usr/bin/env bash

exec 1>1_2.txt
echo "This is a test of redirecting all output"
:<<'END_COMMENT'
# Перенаправление ввода в скриптах

Для перенаправления ввода можно воспользоваться той же методикой, которую мы применяли для перенаправления вывода. Например, команда exec позволяет сделать источником данных для STDIN какой-нибудь файл

Эта команда указывает оболочке на то, что источником вводимых данных должен стать файл myfile, а не обычный STDIN. Посмотрим на перенаправление ввода в действии

В одном из предыдущих материалов вы узнали о том, как использовать команду read для чтения данных, вводимых пользователем с клавиатуры. Если перенаправить ввод, сделав источником данных файл, то команда read, при попытке прочитать данные из STDIN, будет читать их из файла, а не с клавиатуры.

Некоторые администраторы Linux используют этот подход для чтения и последующей обработки лог-файлов.
END_COMMENT