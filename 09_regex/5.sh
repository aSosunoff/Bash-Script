#!/usr/bin/env bash

:<<'END_COMMENT'
# Символ «точка»

Точка используется для поиска любого одиночного символа, за исключением символа перевода строки. Передадим такому регулярному выражению файл myfile, содержимое которого приведено ниже:

```bash
$ awk '/.st/{print $0}' myfile
```

Как видно по выведенным данным, шаблону соответствуют лишь первые две строки из файла, так как они содержат последовательность символов «st», предварённую ещё одним символом, в то время как третья строка подходящей последовательности не содержит, а в четвёртой она есть, но находится в самом начале строки.
END_COMMENT