#!/usr/bin/env bash


:<<'END_COMMENT'
# Фигурные скобки

Фигурные скобки, которыми можно пользоваться в ERE-шаблонах, похожи на символы, рассмотренные выше, но они позволяют точнее задавать необходимое число вхождений предшествующего им символа. Указывать ограничение можно в двух форматах:

n — число, задающее точное число искомых вхождений
n, m — два числа, которые трактуются так: «как минимум n раз, но не больше чем m».

Вот примеры первого варианта:

```bash
$ echo "tst" | awk '/te{1}st/{print $0}'
$ echo "test" | awk '/te{1}st/{print $0}'
```

В старых версиях awk нужно было использовать ключ командной строки --re-interval для того, чтобы программа распознавала интервалы в регулярных выражениях, но в новых версиях этого делать не нужно.

```bash
$ echo "tst" | awk '/te{1,2}st/{print $0}'
$ echo "test" | awk '/te{1,2}st/{print $0}'
$ echo "teest" | awk '/te{1,2}st/{print $0}'
$ echo "teeest" | awk '/te{1,2}st/{print $0}'
```

В данном примере символ «e» должен встретиться в строке 1 или 2 раза, тогда регулярное выражение отреагирует на текст.

Фигурные скобки можно применять и с классами символов. Тут действуют уже знакомые вам принципы:

```bash
$ echo "tst" | awk  '/t[ae]{1,2}st/{print $0}'
$ echo "test" | awk  '/t[ae]{1,2}st/{print $0}'
$ echo "teest" | awk  '/t[ae]{1,2}st/{print $0}'
$ echo "teeast" | awk  '/t[ae]{1,2}st/{print $0}'
```

Шаблон отреагирует на текст в том случае, если в нём один или два раза встретится символ «a» или символ «e».
END_COMMENT