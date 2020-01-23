#!/usr/bin/env bash

# This is a comment

pwd
whoami
:<<'END_COMMENT'
# Как устроены `bash-скрипты`

Создайте пустой файл с использованием команды `touch`. В его первой строке нужно указать, какую именно 
оболочку # мы собираемся использовать.
Нас интересует `bash`, поэтому первая строка файла будет такой:

`!/bin/bash`

В других строках этого файла символ решётки используется для обозначения комментариев, 
которые оболочка не обрабатывает. 
Однако, первая строка — это особый случай, здесь решётка, за которой следует восклицательный знак 
(эту последовательность называют шебанг) и путь к bash, указывают системе на то, 
что сценарий создан именно для bash.

Команды оболочки отделяются знаком перевода строки, комментарии выделяют знаком решётки. 
Вот как это выглядит:

Тут, так же, как и в командной строке, можно записывать команды в одной строке, разделяя точкой с запятой. 
Однако, если писать команды на разных строках, файл легче читать. В любом случае оболочка их обработает.
END_COMMENT