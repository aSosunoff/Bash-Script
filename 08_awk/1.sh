#!/usr/bin/env bash

awk '{print "Welcome to awk command tutorial"}'
:<<'END_COMMENT'
# Чтение awk-скриптов из командной строки

Скрипты `awk`, которые можно писать прямо в командной строке, оформляются в виде текстов команд, заключённых в фигурные скобки. Кроме того, так как `awk` предполагает, что скрипт представляет собой текстовую строку, его нужно заключить в одинарные кавычки:

```bash
$ awk '{print "Welcome to awk command tutorial"}'
```

Запустим эту команду… И ничего не произойдёт Дело тут в том, что мы, при вызове `awk`, не указали файл с данными. В подобной ситуации `awk` ожидает поступления данных из STDIN. Поэтому выполнение такой команды не приводит к немедленно наблюдаемым эффектам, но это не значит, что `awk` не работает — он ждёт входных данных из STDIN.

Если теперь ввести что-нибудь в консоль и нажать Enter, `awk` обработает введённые данные с помощью скрипта, заданного при его запуске. `Awk` обрабатывает текст из потока ввода построчно, этим он похож на sed. В нашем случае `awk` ничего не делает с данными, он лишь, в ответ на каждую новую полученную им строку, выводит на экран текст, заданный в команде `print`.

Что бы мы ни ввели, результат в данном случае будет одним и тем же — вывод текста.
Для того, чтобы завершить работу `awk`, нужно передать ему символ конца файла (EOF, End-of-File). Сделать это можно, воспользовавшись сочетанием клавиш `CTRL + D`.

Неудивительно, если этот первый пример показался вам не особо впечатляющим. Однако, самое интересное — впереди.
END_COMMENT