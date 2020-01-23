#!/usr/bin/env bash

# Глобальные переменные
function concatFn {
	text="$text XXX"
}

read -p "Enter text: " text
concatFn
echo $text

# Локальные переменные
function concatFn {
	local t="$1 XXX"
	echo $t
}

read -p "Enter text: " text
r=$(concatFn $text)
echo $r
:<<'END_COMMENT'
# Глобальные переменные. Локальные переменные

Глобальные переменные — это переменные, которые видны из любого места bash-скрипта. Если вы объявили глобальную переменную в основном коде скрипта, к такой переменной можно обратиться из функции.

Почти то же самое справедливо и для глобальных переменных, объявленных в функциях. Обращаться к ним можно и в основном коде скрипта после вызова функций.

По умолчанию все объявленные в скриптах переменные глобальны. Так, к переменным, объявленным за пределами функций, можно без проблем обращаться из функций

Переменные, которые объявляют и используют внутри функции, могут быть объявлены локальными. Для того, чтобы это сделать, используется ключевое слово `local` перед именем переменной:

Если за пределами функции есть переменная с таким же именем, это на неё не повлияет. Ключевое слово local позволяет отделить переменные, используемые внутри функции, от остальных переменных.
END_COMMENT