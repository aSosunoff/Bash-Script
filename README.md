
# Как устроены bash-скрипты
```bash
#!/usr/bin/env bash

# Создайте пустой файл с использованием команды touch. В его первой строке нужно указать, какую именно 
# оболочку # мы собираемся использовать.
# Нас интересует bash, поэтому первая строка файла будет такой:

#!/bin/bash

# В других строках этого файла символ решётки используется для обозначения комментариев, 
# которые оболочка не обрабатывает. 
# Однако, первая строка — это особый случай, здесь решётка, за которой следует восклицательный знак 
# (эту последовательность называют шебанг) и путь к bash, указывают системе на то, 
# что сценарий создан именно для bash.

# Команды оболочки отделяются знаком перевода строки, комментарии выделяют знаком решётки. 
# Вот как это выглядит:

# This is a comment

pwd
whoami

# Тут, так же, как и в командной строке, можно записывать команды в одной строке, разделяя точкой с запятой. 
# Однако, если писать команды на разных строках, файл легче читать. В любом случае оболочка их обработает.
```

# Сравнение чисел
```bash
#!/usr/bin/env bash

# В скриптах можно сравнивать числовые значения. Ниже приведён список соответствующих команд.

# n1 -eq n2 Возвращает истинное значение, если n1 равно n2.
# n1 -ge n2 Возвращает истинное значение, если n1 больше или равно n2.
# n1 -gt n2 Возвращает истинное значение, если n1 больше n2.
# n1 -le n2 Возвращает истинное значение, если n1 меньше или равно n2.
# n1 -lt n2 Возвращает истинное значение, если n1 меньше n2.
# n1 -ne n2 Возвращает истинное значение, если n1 не равно n2.

# В качестве примера опробуем один из операторов сравнения. Обратите внимание на то, что выражение заключено в квадратные скобки.

val1=6
if [ $val1 -gt 5 ]; then
    echo "The test value $val1 is greater than 5"
else
    echo "The test value $val1 is not greater than 5"
fi
```

# Сравнение строк
```bash
#!/usr/bin/env bash

# В сценариях можно сравнивать и строковые значения. Операторы сравнения выглядят довольно просто, однако у операций сравнения строк есть определённые особенности, которых мы коснёмся ниже. Вот список операторов.

# str1 = str2 Проверяет строки на равенство, возвращает истину, если строки идентичны.
# str1 != str2 Возвращает истину, если строки не идентичны.
# str1 < str2 Возвращает истину, если str1 меньше, чем str2.
# str1 > str2 Возвращает истину, если str1 больше, чем str2.
# -n str1 Возвращает истину, если длина str1 больше нуля.
# -z str1 Возвращает истину, если длина str1 равна нулю.

# Вот пример сравнения строк в сценарии:

user ="likegeeks"
if [$user = $USER]; then
    echo "The user $user  is the current logged in user"
fi

# Вот одна особенность сравнения строк, о которой стоит упомянуть. А именно, операторы «>» и «<» необходимо экранировать с помощью обратной косой черты, иначе скрипт будет работать неправильно, хотя сообщений об ошибках и не появится. Скрипт интерпретирует знак «>» как команду перенаправления вывода.

# Вот как работа с этими операторами выглядит в коде:

val1=text
val2="another text"
if [ $val1 \> "$val2" ]; then
    echo "$val1 is greater than $val2"
else
    echo "$val1 is less than $val2"
fi

# Ещё одна особенность операторов «>» и «<» заключается в том, как они работают с символами в верхнем и нижнем регистрах. Для того, чтобы понять эту особенность, подготовим текстовый файл с таким содержимым:

sort user_list.txt
```

# Проверки файлов
```bash
#!/usr/bin/env bash

# Пожалуй, нижеприведённые команды используются в bash-скриптах чаще всего. Они позволяют проверять различные условия, касающиеся файлов. Вот список этих команд.

# -d fileПроверяет, существует ли файл, и является ли он директорией.
# -e fileПроверяет, существует ли файл.
# -f file Проверяет, существует ли файл, и является ли он файлом.
# -r fileПроверяет, существует ли файл, и доступен ли он для чтения.
# -s file Проверяет, существует ли файл, и не является ли он пустым.
# -w fileПроверяет, существует ли файл, и доступен ли он для записи.
# -x fileПроверяет, существует ли файл, и является ли он исполняемым.
# file1 -nt file2 Проверяет, новее ли file1, чем file2.
# file1 -ot file2Проверяет, старше ли file1, чем file2.
# -O file Проверяет, существует ли файл, и является ли его владельцем текущий пользователь.
# -G fileПроверяет, существует ли файл, и соответствует ли его идентификатор группы идентификатору группы текущего пользователя.

# Эти команды, как впрочем, и многие другие рассмотренные сегодня, несложно запомнить. Их имена, являясь сокращениями от различных слов, прямо указывают на выполняемые ими проверки.

if [ -e user_list.txt ]; then
    echo 1;
else
    echo 2;
fi
```

# Вывод сообщений
```bash
#!/usr/bin/env bash

# Для вывода текста в консоль Linux применяется команда echo. Воспользуемся знанием этого факта и отредактируем наш скрипт, добавив пояснения к данным, которые выводят уже имеющиеся в нём команды:

# our comment is here

echo "The current directory is:"
pwd
echo "The user logged in is:"
whoami

# Теперь мы можем выводить поясняющие надписи, используя команду echo.
```

# Использование переменных
```bash
# Переменные позволяют хранить в файле сценария информацию, например — результаты работы команд для использования их другими командами.

# Нет ничего плохого в исполнении отдельных команд без хранения результатов их работы, но возможности такого подхода весьма ограничены.

# Существуют два типа переменных, которые можно использовать в bash-скриптах:

# Переменные среды
# Пользовательские переменны
```

# Переменные среды
```bash
#!/usr/bin/env bash

# Иногда в командах оболочки нужно работать с некими системными данными. Вот, например, как вывести домашнюю директорию текущего пользователя:

echo "Home for the current user id: \$HOME -> $HOME"

# Обратите внимание на то, что мы можем использовать системную переменную $HOME в двойных кавычках, это не помешает системе её распознать.
```

# Пользовательские переменные
```bash
#!/usr/bin/env bash

# В дополнение к переменным среды, bash-скрипты позволяют задавать и использовать в сценарии собственные переменные. Подобные переменные хранят значение до тех пор, пока не завершится выполнение сценария.

# Как и в случае с системными переменными, к пользовательским переменным можно обращаться, используя знак доллара:

name='Alex'
surname='Popov'
echo $name $surname
```

# Подстановка команд
```bash
#!/usr/bin/env bash

# Одна из самых полезных возможностей bash-скриптов — это возможность извлекать информацию из вывода команд и назначать её переменным, что позволяет использовать эту информацию где угодно в файле сценария.

# Сделать это можно двумя способами.

# С помощью значка обратного апострофа «`»
# С помощью конструкции $()

# Используя первый подход, проследите за тем, чтобы вместо обратного апострофа не ввести одиночную кавычку. Команду нужно заключить в два таких значка:

mydir=`pwd`
mydir_2=$(pwd)
echo $mydir ' or ' $mydir_2
```

# Математические операции
```bash
#!/usr/bin/env bash

# Для выполнения математических операций в файле скрипта можно использовать конструкцию вида $((a+b)):

var1=$(( 5 + 5 ))
echo $var1
```

# Управляющая конструкция if-then
```bash
#!/usr/bin/env bash

# В некоторых сценариях требуется управлять потоком исполнения команд. Например, если некое значение больше пяти, нужно выполнить одно действие, в противном случае — другое. Подобное применимо в очень многих ситуациях, и здесь нам поможет управляющая конструкция if-then. В наиболее простом виде она выглядит так:

if [ 1 -eq 1 ]; then
    echo true;
else
    echo false;
fi
```

# Управляющая конструкция if-then-else
```bash
#!/usr/bin/env bash

# Для того, чтобы программа смогла сообщить и о результатах успешного поиска, и о неудаче, воспользуемся конструкцией if-then-else. Вот как она устроена:

# Если первая команда возвратит ноль, что означает её успешное выполнение, условие окажется истинным и выполнение не пойдёт по ветке else. В противном случае, если будет возвращено что-то, отличающееся от нуля, что будет означать неудачу, или ложный результат, будут выполнены команды, расположенные после else.

user=alex
if [ $(grep $user user_list.txt) ]; then
    echo "$user is found of file user_list.txt";
else
    echo 'User is not found';
fi
```


#!/usr/bin/env bash
```bash

# Циклы for
# Перебор простых значений
for var in test1 test2 test3; do
	echo "$var"
done

echo $'\n'---$'\n'

# Перебор сложных значений
for var in "test1 test2" "test3"; do
	echo "$var"
done

echo $'\n'---$'\n'

# Инициализация цикла списком, полученным из результатов работы команды
for line in $(cat file_test.txt); do
	echo "$line"
done

echo $'\n'---$'\n'

# Разделители полей
IFS=$'\n'
for item in $(cat file_test.txt); do
	echo "$item"
done

echo $'\n'---$'\n'

# Обход файлов, содержащихся в директории
for file in $(pwd)/*; do
	if [ -d "$file" ]; then
		echo "$file --> is a directory"
	elif [ -f "$file" ]; then
		echo "$file --> is a file"
	fi
done

echo $'\n'---$'\n'

#Циклы for в стиле C
for ((i = 0; i < 10; i++)); do
	echo "$i"
done

echo $'\n'---$'\n'

# Цикл while
var1=5
while [ $var1 \> 0 ]; do
	echo $var1
	var1=$(($var1 - 1))
done

echo $'\n'---$'\n'

# Вложенные циклы
for ((i = 0; i < 5; i++)); do
	echo "$i -"
	for ((j = 0; j < 5; j++)); do
		echo "- $j"
	done
done

echo $'\n'---$'\n'

# Обработка содержимого файла
for line in $(cat file_test.txt); do
	echo "$line"
	IFS=$' '
	for item in $line; do
		echo "-- $item"
	done
done

echo $'\n'---$'\n'

# Обработка вывода, выполняемого в цикле
for ((i = 0; i < 10; i++)); do
	echo "$i"
done >output_file.txt

echo $'\n'---$'\n'

# Пример: поиск исполняемых файлов
IFS=:
for folder in $PATH; do
	count_input=10
	echo "$folder "
	for file in $folder/*.exe; do
		if [ $count_input \> 0 ]; then
			# if [ -x "$file" ]; then
			echo "	$file"
			# fi
		else
			break
		fi
		count_input=$(($count_input - 1))
	done
done
```


#!/usr/bin/env bash
```bash

# Check paramerer
if [ -n "$1" ]; then
	echo "First parameter is ( $1 )"
	echo "The were ( $# ) parameters passed"
	echo "The last parameter is ( ${!#} )"
	echo $*
	echo $@

	echo $'\n'
	echo "echo param by a for"
	for item in "$*"; do
		echo "$item"
	done

	echo $'\n'
	echo "echo param by a for"
	for item in "$@"; do
		echo "$item"
	done

	# echo $'\n'
	# echo "echo param by a while"
	# while [ -n "$1" ]; do
	# 	echo $1
	# 	shift
	# done

	# echo $'\n'
	# echo "echo param by a while"
	# while [ -n "$1" ]; do
	# 	case "$1" in
	# 	-a) echo "case -a" ;;
	# 	-r | -y) echo "case -r or -y" ;;
	# 	*) echo "default" ;;
	# 	esac
	# 	shift
	# done

	# echo $'\n'
	# echo "echo param and kye by a while"
	# while [ -n "$1" ]; do
	# 	case "$1" in
	# 		-a) echo "Key => -a" ;;
	# 		-b) echo "Key => -b" ;;
	# 		--) shift 
	# 		break ;;
	# 		*) echo "$1 is not an option" ;;
	# 	esac
	# 	shift
	# done

	# for parap in $@; do
	# 	echo "Param => $parap"
	# done
else
	echo 'Parameter is not found'

	# -a Вывести все объекты.
	# -c Произвести подсчёт.
	# -d Указать директорию.
	# -e Развернуть объект.
	# -f Указать файл, из которого нужно прочитать данные.
	# -h Вывести справку по команде.
	# -i Игнорировать регистр символов.
	# -l Выполнить полноформатный вывод данных.
	# -n Использовать неинтерактивный (пакетный) режим.
	# -o Позволяет указать файл, в который нужно перенаправить вывод.
	# -q Выполнить скрипт в quiet-режиме.
	# -r Обрабатывать папки и файлы рекурсивно.
	# -s Выполнить скрипт в silent-режиме.
	# -v Выполнить многословный вывод.
	# -x Исключить объект.
	# -y Ответить «yes» на все вопросы.

	# echo $'\n'
	# echo "Получение данных от пользователя"

	# echo -n "Enter your name: "
	# read name
	# echo "Welcome $name"

	# echo $'\n'
	# read -p "Enter your name: " first last
	# echo "Your data for $last $first"

	# echo $'\n'
	# read -p "Enter your name: "
	# echo "Hello $REPLY, welcome to my program"

	# if read -t 5 -p "Enter your name: "; then
	# 	echo "Hello $name, welcome to my script"
	# else
	# 	echo "Sorry, to slow!"
	# fi

	# echo $'\n'
	# read -s -p "Enter your password: " pass
	# echo "Is your password really $pass? "

	echo $'\n'
	echo 'Read from file test.txt'

	cat test.txt | while read line; do
		echo $line
	done
	
fi
```


#!/usr/bin/env bash
```bash

# Всё в Linux — это файлы, в том числе — ввод и вывод. Операционная система идентифицирует файлы с использованием дескрипторов.

# Каждому процессу позволено иметь до девяти открытых дескрипторов файлов. Оболочка bash резервирует первые три дескриптора с идентификаторами 0, 1 и 2. Вот что они означают.

# 0, STDIN — стандартный поток ввода.
# 1, STDOUT — стандартный поток вывода.
# 2, STDERR — стандартный поток ошибок.

echo 'Постоянное перенаправление вывода'
echo $'\n'

exec 1>1_1.txt
echo "This is a test of redirecting all output"
echo "from a shell script to another file."
echo "without having to redirect every line"

exec 1>1_2.txt
echo "This is a test of redirecting all output"
```

#!/usr/bin/env bash
```bash

# Создание собственного перенаправления вывода
exec 3>2_1.txt
echo "This should display on the screen"
echo "and this should be stored in the file" >&3
echo "And this should be back on the screen"
```

#!/usr/bin/env bash
```bash

# Создание дескрипторов файлов для ввода данных
exec 6<&0
exec 0< 3_1.txt
while read line; do
	echo $line
done

exec 0<&6
read -p "Are you don new?" answer
case "$answer" in
	y) echo "Goodbye" ;;
	n) echo "Sorry, this is the end";;
esac
```


#!/usr/bin/env bash
```bash

function functionTest {
	echo "$1" # arguments are accessible through FunctionTest, echo "$1" # arguments are accessible through FunctionTest, ,...,...
	echo "$2" # arguments are accessible through FunctionTest, echo "$1" # arguments are accessible through FunctionTest, ,...,...
	echo '1 + 1'
	return $[1 + 1]
}

functionTest 1 2
echo "return value from functionTest is => $?"
```

#!/usr/bin/env bash
```bash

function test {
	echo $[10 + 9]
}
result=$(test)
echo $result
```

#!/usr/bin/env bash
```bash

# Глобальные переменные
function concatFn {
	text="$text XXX"
}

read -p "Enter text: " text
concatFn
echo $text
```

#!/usr/bin/env bash
```bash

# Локальные переменные
function concatFn {
	local t="$1 XXX"
	echo $t
}

read -p "Enter text: " text
r=$(concatFn $text)
echo $r
```

#!/usr/bin/env bash
```bash

# Передача функциям массивов в качестве аргументов
function text {
	echo "Parameter $@"
	local arr=$@
	echo ${arr[*]}
}
myArr=(1 2 3 4 5)
echo "The original array is: ${myArr[*]}"
text ${myArr[*]}
```

#!/usr/bin/env bash
```bash
. myfunc.sh

# Создание и использование библиотек
echo $(text)
```

#!/usr/bin/env bash
```bash

# Создание и использование библиотек
function text {
	echo $[1 + 2]
}
```

