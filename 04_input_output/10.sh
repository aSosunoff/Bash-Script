#!/usr/bin/env bash

exec 3>2_1.txt
echo "This should display on the screen"
echo "and this should be stored in the file" >&3
echo "And this should be back on the screen"
:<<'END_COMMENT'
# Создание собственного перенаправления вывода

Перенаправляя ввод и вывод в сценариях, вы не ограничены тремя стандартными дескрипторами файлов. Как уже говорилось, можно иметь до девяти открытых дескрипторов. Остальные шесть, с номерами от 3 до 8, можно использовать для перенаправления ввода или вывода. Любой из них можно назначить файлу и использовать в коде скрипта.

Назначить дескриптор для вывода данных можно, используя команду exec:

```bash
#!/bin/bash
exec 3>myfile
echo "This should display on the screen"
echo "and this should be stored in the file" >&3
echo "And this should be back on the screen"
```

После запуска скрипта часть вывода попадёт на экран, часть — в файл с дескриптором 3
END_COMMENT