#!/usr/bin/env bash

function text {
	echo "Parameter $@"
	local arr=$@
	echo ${arr[*]}
}
myArr=(1 2 3 4 5)
echo "The original array is: ${myArr[*]}"
text ${myArr[*]}
:<<'END_COMMENT'
# Передача функциям массивов в качестве аргументов

Попробуем передать функции в качестве аргумента массив. Сразу хочется сказать, что работать такая конструкция будет неправильно:

```bash
#!/bin/bash
function myfunc {
	echo "The parameters are: $@"
	arr=$1
	echo "The received array is ${arr[*]}"
}
myarray=(1 2 3 4 5)
echo "The original array is: ${myarray[*]}"
myfunc $myarray
```

Как видно из примера, при передаче функции массива, она получит доступ лишь к его первому элементу.

Для того, чтобы эту проблему решить, из массива надо извлечь имеющиеся в нём данные и передать их функции как самостоятельные аргументы. Если надо, внутри функции полученные ей аргументы можно снова собрать в массив:
END_COMMENT