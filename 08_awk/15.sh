#!/usr/bin/env bash

awk 'BEGIN{x = "likegeeks"; print toupper(x)}'
:<<////
Строковые функции

Awk поддерживает множество [строковых функций](https://www.gnu.org/software/gawk/manual/html_node/String-Functions.html#String-Functions). Все они устроены более или менее одинаково. Вот, например, функция `toupper`:

```bash
$ awk 'BEGIN{x = "likegeeks"; print toupper(x)}'
```

Эта функция преобразует символы, хранящиеся в переданной ей строковой переменной, к верхнему регистру.
////