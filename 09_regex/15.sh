#!/usr/bin/env bash

echo "This is a test" | awk '/test|exam/{print $0}'
echo "This is an exam" | awk '/test|exam/{print $0}'
echo "This is something else" | awk '/test|exam/{print $0}'
:<<'END_COMMENT'
# Символ логического «или»

Символ | — вертикальная черта, означает в регулярных выражениях логическое «или». Обрабатывая регулярное выражение, содержащее несколько фрагментов, разделённых таким знаком, движок сочтёт анализируемый текст подходящим в том случае, если он будет соответствовать любому из фрагментов. Вот пример:

```bash
$ echo "This is a test" | awk '/test|exam/{print $0}'
$ echo "This is an exam" | awk '/test|exam/{print $0}'
$ echo "This is something else" | awk '/test|exam/{print $0}'
```

В данном примере регулярное выражение настроено на поиск в тексте слов «test» или «exam». Обратите внимание на то, что между фрагментами шаблона и разделяющим их символом | не должно быть пробелов.
END_COMMENT