#!/usr/bin/env bash

echo "My name is Tom" | awk '{$4="Adam"; print $0}'
:<<////
Использование нескольких команд

Вызов awk с одной командой обработки текста — подход очень ограниченный. Awk позволяет обрабатывать данные с использованием многострочных скриптов. Для того, чтобы передать awk многострочную команду при вызове его из консоли, нужно разделить её части точкой с запятой

В данном примере первая команда записывает новое значение в переменную $4, а вторая выводит на экран всю строку.
////