#!/usr/bin/env bash

echo "This is a test. With sed" | sed -n '/test/p'

echo "This is a test. With awk" | awk '/test/{print $0}'
:<<'END_COMMENT'
# Регулярные выражения POSIX BRE

Пожалуй, самый простой шаблон BRE представляет собой регулярное выражение для поиска точного вхождения последовательности символов в тексте. Вот как выглядит поиск строки в sed и awk:

```bash
$ echo "This is a test" | sed -n '/test/p'
$ echo "This is a test" | awk '/test/{print $0}'
```
Можно заметить, что поиск заданного шаблона выполняется без учёта точного места нахождения текста в строке. Кроме того, не имеет значение и количество вхождений. После того, как регулярное выражение найдёт заданный текст в любом месте строки, строка считается подходящей и передаётся для дальнейшей обработки.

Работая с регулярными выражениями нужно учитывать то, что они чувствительны к регистру символов:

```bash
$ echo "This is a test" | awk '/Test/{print $0}'
$ echo "This is a test" | awk '/test/{print $0}'
```
Первое регулярное выражение совпадений не нашло, так как слово «test», начинающееся с заглавной буквы, в тексте не встречается. Второе же, настроенное на поиск слова, написанного прописными буквами, обнаружило в потоке подходящую строку.

В регулярных выражениях можно использовать не только буквы, но и пробелы, и цифры:

```bash
$ echo "This is a test 2 again" | awk '/test 2/{print $0}'
```

Пробелы воспринимаются движком регулярных выражений как обычные символы.
END_COMMENT