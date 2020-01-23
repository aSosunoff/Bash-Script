#!/usr/bin/env bash

function functionTest {
	echo "$1" # arguments are accessible through FunctionTest, echo "$1" # arguments are accessible through FunctionTest, ,...,...
	echo "$2" # arguments are accessible through FunctionTest, echo "$1" # arguments are accessible through FunctionTest, ,...,...
	echo '1 + 1'
	return $[1 + 1]
}

functionTest 1 2
echo "return value from functionTest is => $?"
:<<'END_COMMENT'
# Использование команды return

Команда return позволяет задавать возвращаемый функцией целочисленный код завершения. Есть два способа работы с тем, что является результатом вызова функции.

Функции bash можно воспринимать как небольшие фрагменты кода, которые позволяют экономить время и место, избавляя нас от необходимости постоянно вводить с клавиатуры или копировать одни и те же наборы команд. Однако, возможности функций гораздо шире. В частности, речь идёт о передаче им аргументов.

Функции могут использовать стандартные позиционные параметры, в которые записывается то, что передаётся им при вызове. Например, имя функции хранится в параметре `$0`, первый переданный ей аргумент — в `$1`, второй — в `$2`, и так далее. Количество переданных функции аргументов можно узнать, обратившись к переменной `$#`.
END_COMMENT