#!/usr/bin/env bash

var1=5
while [ $var1 \> 0 ]; do
	echo $var1
	var1=$(($var1 - 1))
done

:<<////
Цикл `while`

Конструкция `for` — не единственный способ организации циклов в `bash-скриптах`. Здесь можно пользоваться и циклами `while`. В таком цикле можно задать команду проверки некоего условия и выполнять тело цикла до тех пор, пока проверяемое условие возвращает ноль, или сигнал успешного завершения некоей операции. Когда условие цикла вернёт ненулевое значение, что означает ошибку, цикл остановится.

Вот схема организации циклов `while`

```bass
	while команда проверки условия
	do
		другие команды
	done
```

На входе в цикл проверяется, больше ли нуля переменная `$var1`. Если это так, выполняется тело цикла, в котором из значения переменной вычитается единица. Так происходит в каждой итерации, при этом мы выводим в консоль значение переменной до его модификации. Как только `$var1` примет значение 0, цикл прекращается.

Если не модифицировать переменную `$var1`, это приведёт к попаданию скрипта в бесконечный цикл.
////