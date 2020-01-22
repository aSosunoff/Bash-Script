#!/usr/bin/env bash

for line in $(cat file_test.txt); do
	echo "$line"
done

:<<////
Инициализация цикла списком, полученным из результатов работы команды

Ещё один способ инициализации цикла `for` заключается в передаче ему списка, который является результатом работы некоей команды. Тут используется подстановка команд для их исполнения и получения результатов их работы.

В этом примере задействована команда `cat`, которая читает содержимое файла. Полученный список значений передаётся в цикл и выводится на экран. Обратите внимание на то, что в файле, к которому мы обращаемся, содержится список слов, разделённых знаками перевода строки, пробелы при этом не используются.

Тут надо учесть, что подобный подход, если ожидается построчная обработка данных, не сработает для файла более сложной структуры, в строках которого может содержаться по несколько слов, разделённых пробелами. Цикл будет обрабатывать отдельные слова, а не строки.

Что, если это совсем не то, что нужно?
////