#!/usr/bin/env bash

for var in test1 test2 test3; do
	echo "$var"
done
:<<'END_COMMENT'
# Циклы for. Перебор простых значений

Оболочка `bash` поддерживает циклы `for`, которые позволяют организовывать перебор последовательностей значений. Вот какова базовая структура таких циклов:

```bash
for var in list do
	команды
done
```

В каждой итерации цикла в переменную var будет записываться следующее значение из списка `list`. В первом проходе цикла, таким образом, будет задействовано первое значение из списка. Во втором — второе, и так далее — до тех пор, пока цикл не дойдёт до последнего элемента.

Обратите внимание на то, что переменная $var сохраняет значение при выходе из цикла, её содержимое можно менять, в целом, работать с ней можно как с любой другой переменной.
END_COMMENT