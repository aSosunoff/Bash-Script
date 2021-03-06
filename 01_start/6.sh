#!/usr/bin/env bash

mydir=`pwd`
mydir_2=$(pwd)
echo $mydir ' or ' $mydir_2
:<<'END_COMMENT'
# Подстановка команд

Одна из самых полезных возможностей bash-скриптов — это возможность извлекать информацию из вывода команд и назначать её переменным, что позволяет использовать эту информацию где угодно в файле сценария.

Сделать это можно двумя способами.

* С помощью значка обратного апострофа «`»
* С помощью конструкции $()

Используя первый подход, проследите за тем, чтобы вместо обратного апострофа не ввести одиночную кавычку. Команду нужно заключить в два таких значка:

```bash
mydir=`pwd`
```

При втором подходе то же самое записывают так:

```bash
mydir=$(pwd)
```

А скрипт, в итоге, может выглядеть так:

```bash
#!/bin/bash
mydir=$(pwd)
echo $mydir
```

В ходе его работы вывод команды pwdбудет сохранён в переменной mydir, содержимое которой, с помощью команды echo, попадёт в консоль.
END_COMMENT