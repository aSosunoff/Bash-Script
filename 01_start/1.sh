#!/usr/bin/env bash

# n1 -eq n2Возвращает истинное значение, если n1 равно n2.
# n1 -ge n2 Возвращает истинное значение, если n1больше или равно n2.
# n1 -gt n2Возвращает истинное значение, если n1 больше n2.
# n1 -le n2Возвращает истинное значение, если n1меньше или равно n2.
# n1 -lt n2Возвращает истинное значение, если n1 меньше n2.
# n1 -ne n2Возвращает истинное значение, если n1не равно n2.

# str1 = str2 Проверяет строки на равенство, возвращает истину, если строки идентичны.
# str1 != str2Возвращает истину, если строки не идентичны.
# str1 < str2Возвращает истину, если str1меньше, чем str2.
# str1 > str2 Возвращает истину, если str1больше, чем str2.
# -n str1 Возвращает истину, если длина str1больше нуля.
# -z str1Возвращает истину, если длина str1равна нулю.

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

echo 'The current directory is:'
pwd
echo 'The user logger in is:'
whoami
echo "Home for the current user id: \$HOME -> $HOME"

echo; echo --- 'variable'; echo; #---

name='Alex'
surname='Popov'
echo $name $surname

echo; echo --- 'result command'; echo; #---

mydir=`pwd`
mydir_2=$(pwd)
echo $mydir ' or ' $mydir_2

echo; echo --- 'math operation'; echo; #---

var1=$(( 5 + 5 ))
echo $var1

echo; echo --- 'if'; echo; #---

if [ 1 -eq 1 ]; then
    echo true;
else
    echo false;
fi

user=alex
if [ $(grep $user user_list.txt) ]; then
    echo "$user is found of file user_list.txt";
else
    echo 'User is not found';
fi

ls

echo; echo --- 'sort'; echo; #---

sort user_list.txt

echo; echo --- ''; echo; #---

if [ -e user_list.txt ]; then
    echo 1;
else
    echo 2;
fi