#!/usr/bin/env bash

sed '2d' myfile.txt

sed '1,2d' myfile.txt
:<<////
Удаление строк

Утилита sed годится не только для замены одних последовательностей символов в строках на другие. С её помощью, а именно, используя команду d, можно удалять строки из текстового потока.

Мы хотим, чтобы из текста была удалена третья строка. Обратите внимание на то, что речь не идёт о файле. Файл останется неизменным, удаление отразится лишь на выводе, который сформирует sed.

Если при вызове команды d не указать номер удаляемой строки, удалены будут все строки потока.

Вот как применить команду d к диапазону строк

Строки можно удалять и по шаблону

```bash
sed '/test/d' myfile
```

При вызове d можно указывать пару шаблонов — будут удалены строки, в которых встретится шаблон, и те строки, которые находятся между ними:

```bash
sed '/second/,/fourth/d' myfile
```
////