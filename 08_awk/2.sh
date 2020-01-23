#!/usr/bin/env bash

awk '{print $1}' myfile
awk -F: '{print $1}' myfile

:<<////
Позиционные переменные, хранящие данные полей

Одна из основных функций awk заключается в возможности манипулировать данными в текстовых файлах. Делается это путём автоматического назначения переменной каждому элементу в строке. По умолчанию awk назначает следующие переменные каждому полю данных, обнаруженному им в записи:

* $0 — представляет всю строку текста (запись).
* $1 — первое поле.
* $2 — второе поле.
* $n — n-ное поле.

Поля выделяются из текста с использованием символа-разделителя. По умолчанию — это пробельные символы вроде пробела или символа табуляции.

Здесь использована переменная `$1`, которая позволяет получить доступ к первому полю каждой строки и вывести его на экран.

Иногда в некоторых файлах в качестве разделителей полей используется что-то, отличающееся от пробелов или символов табуляции. Выше мы упоминали ключ `awk -F`, который позволяет задать необходимый для обработки конкретного файла разделитель
////