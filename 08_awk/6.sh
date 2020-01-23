#!/usr/bin/env bash

awk '
BEGIN {print "HEAD content"}
{print $0}
END {print "END of file"}
' myfile

echo $'\n'

awk '
BEGIN {
    print "Начало отчёта"
    print "--- \t --- \t\t ---"
    print "Номер \t Наименование \t Должность"
    print "--- \t --- \t\t ---"
    FS="."
}
{
    print $1 "\t" $2 "\t\t" $3
}
END {
    print "--- \t --- \t\t ---"
    print "Конец"
}' myfile_2
:<<////
Выполнение команд после окончания обработки данных

Ключевое слово `END` позволяет задавать команды, которые надо выполнить после окончания обработки данных

После завершения вывода содержимого файла, `awk` выполняет команды блока `END`. Это полезная возможность, с её помощью, например, можно сформировать подвал отчёта.

Тут, в блоке `BEGIN`, создаётся заголовок табличного отчёта. В этом же разделе мы указываем символ-разделитель. После окончания обработки файла, благодаря блоку `END`, система сообщит нам о том, что работа окончена.
////