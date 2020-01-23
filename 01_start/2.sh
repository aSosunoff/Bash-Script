#!/usr/bin/env bash

# our comment is here

echo "The current directory is:"
pwd
echo "The user logged in is:"
whoami
:<<'END_COMMENT'
# Вывод сообщений

Для вывода текста в консоль `Linux` применяется команда `echo`. Воспользуемся знанием этого факта и отредактируем наш скрипт, добавив пояснения к данным, которые выводят уже имеющиеся в нём команды:

Теперь мы можем выводить поясняющие надписи, используя команду `echo`.
END_COMMENT