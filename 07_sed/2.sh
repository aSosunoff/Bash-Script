#!/usr/bin/env bash

sed -e '
s/Text/Welcome/;
s/Welcome/another test/' ./myfile.txt
:<<'END_COMMENT'
# Выполнение наборов команд при вызове sed

Для выполнения нескольких действий с данными, используйте ключ -e при вызове sed. Например, вот как организовать замену двух фрагментов текста:

К каждой строке текста из файла применяются обе команды. Их нужно разделить точкой с запятой, при этом между окончанием команды и точкой с запятой не должно быть пробела.

Для ввода нескольких шаблонов обработки текста при вызове sed, можно, после ввода первой одиночной кавычки, нажать Enter, после чего вводить каждое правило с новой строки, не забыв о закрывающей кавычке:
END_COMMENT