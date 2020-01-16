#!/usr/bin/env bash

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
		echo "$file --> is a directory";
	elif [ -f "$file" ]; then
		echo "$file --> is a file";
	fi
done

echo $'\n'---$'\n'

#Циклы for в стиле C
for ((i=0; i<10; i++)); do
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
for ((i=0; i<5; i++)); do
	echo "$i -"
	for ((j=0; j<5; j++)); do
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
for ((i=0; i<10; i++)); do
	echo "$i"
done > output_file.txt

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