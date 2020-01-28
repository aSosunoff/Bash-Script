#!/usr/bin/env bash

echo -n "Enter your name: "
read name
echo "Welcome $name"

echo $'\n'
read -p "Enter your name: " first last
echo "Your data for $last $first"

echo $'\n'
read -p "Enter your name: "
echo "Hello $REPLY, welcome to my program"

if read -t 5 -p "Enter your name: "; then
	echo "Hello $name, welcome to my script"
else
	echo "Sorry, to slow!"
fi
:<<'END_COMMENT'
# Получение данных от пользователя

Ключи и параметры командной строки — это отличный способ получить данные от того, кто пользуется скриптом, однако в некоторых случаях нужно больше интерактивности.

Иногда сценарии нуждаются в данных, которые пользователь должен ввести во время выполнения программы. Именно для этой цели в оболочке bash имеется команда read.

Эта команда позволяет принимать введённые данные либо со стандартного ввода (с клавиатуры), либо используя другие дескрипторы файлов. После получения данных, эта команда помещает их в переменную:

```bash
#!/bin/bash
echo -n "Enter your name: "
read name
echo "Hello $name, welcome to my program."
```
Обратите внимание на то, что команда echo, которая выводит приглашение, вызывается с ключом -n. Это приводит к тому, что в конце приглашения не выводится знак перевода строки, что позволяет пользователю скрипта вводить данные там же, где расположено приглашение, а не на следующей строке.

При вызове read можно указывать и несколько переменных:

```bash
#!/bin/bash
read -p "Enter your name: " first last
echo "Your data for $last, $first…"
```

Если, вызвав read, не указывать переменную, данные, введённые пользователем, будут помещены в специальную переменную среды REPLY:

```bash
#!/bin/bash
read -p "Enter your name: "
echo Hello $REPLY, welcome to my program.
```

Если скрипт должен продолжать выполнение независимо от того, введёт пользователь какие-то данные или нет, вызывая команду read можно воспользоваться ключом -t. А именно, параметр ключа задаёт время ожидания ввода в секундах:

```bash
#!/bin/bash
if read -t 5 -p "Enter your name: " name then
	echo "Hello $name, welcome to my script"
else
	echo "Sorry, too slow! "
fi
```

Если данные не будут введены в течение 5 секунд, скрипт выполнит ветвь условного оператора else, выведя извинения.
END_COMMENT