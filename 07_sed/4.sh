#!/usr/bin/env bash

sed 's/Text/another test/' myfile.txt
:<<'END_COMMENT'
# Флаги команды замены

Команда замены нормально обрабатывает файл, состоящий из нескольких строк, но заменяются только первые вхождения искомого фрагмента текста в каждой строке. Для того, чтобы заменить все вхождения шаблона, нужно использовать соответствующий флаг.

Схема записи команды замены при использовании флагов выглядит так:

```bash
s/pattern/replacement/flags
```

Выполнение этой команды можно модифицировать несколькими способами.

* При передаче номера учитывается порядковый номер вхождения шаблона в строку, заменено будет именно это вхождение.
* Флаг g указывает на то, что нужно обработать все вхождения шаблона, имеющиеся в строке.
* Флаг p указывает на то, что нужно вывести содержимое исходной строки.
* Флаг вида w file указывает команде на то, что нужно записать результаты обработки текста в файл.

Рассмотрим использование первого варианта команды замены, с указанием позиции заменяемого вхождения искомого фрагмента:

```bash
sed 's/test/another test/2' myfile
```

Тут мы указали, в качестве флага замены, число 2. Это привело к тому, что было заменено лишь второе вхождение искомого шаблона в каждой строке. Теперь опробуем флаг глобальной замены — g

```bash
sed 's/test/another test/g' myfile
```

Флаг команды замены p позволяет выводить строки, в которых найдены совпадения, при этом ключ -n, указанный при вызове sed, подавляет обычный вывод:

```bash
sed -n 's/test/another test/p' myfile
```

Как результат, при запуске sed в такой конфигурации на экран выводятся лишь строки (в нашем случае — одна строка), в которых найден заданный фрагмент текста.

Воспользуемся флагом w, который позволяет сохранить результаты обработки текста в файл

```bash
sed 's/test/another test/w output' myfile
```

Хорошо видно, что в ходе работы команды данные выводятся в STDOUT, при этом обработанные строки записываются в файл, имя которого указано после w.
END_COMMENT