#!/usr/bin/env bash

exec 6<&0
exec 0< 3_1.txt
while read line; do
	echo $line
done

exec 0<&6
read -p "Are you don new?" answer
case "$answer" in
	y) echo "Goodbye" ;;
	n) echo "Sorry, this is the end";;
esac
:<<'END_COMMENT'
# Создание дескрипторов файлов для ввода данных

Перенаправить ввод в скрипте можно точно так же, как и вывод. Сохраните STDIN в другом дескрипторе, прежде чем перенаправлять ввод данных.

После окончания чтения файла можно восстановить STDIN и пользоваться им как обычно:

```bash
#!/bin/bash
exec 6<&0
exec 0< myfile
count=1
while read line do
	echo "Line #$count: $line"
	count=$(( $count + 1 ))
done
exec 0<&6
read -p "Are you done now? " answer
case $answer in
	y) echo "Goodbye";;
	n) echo "Sorry, this is the end.";;
esac
```

В этом примере дескриптор файла 6 использовался для хранения ссылки на STDIN. Затем было сделано перенаправление ввода, источником данных для STDIN стал файл. После этого входные данные для команды read поступали из перенаправленного STDIN, то есть из файла.

После чтения файла мы возвращаем STDIN в исходное состояние, перенаправляя его в дескриптор 6. Теперь, для того, чтобы проверить, что всё работает правильно, скрипт задаёт пользователю вопрос, ожидает ввода с клавиатуры и обрабатывает то, что введено.
END_COMMENT