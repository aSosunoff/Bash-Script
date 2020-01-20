#!/usr/bin/env bash

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