#!/usr/bin/env bash

awk '
function myprint(){
    print $1,$2
}
BEGIN{FS="."}
{myprint()}' myfile_2
:<<'END_COMMENT'
# Пользовательские функции

При необходимости вы можете создавать собственные функции `awk`. Такие функции можно использовать так же, как встроенные:

```bash
$ awk '
    function myprint() {
        printf "The user %s has home path at %s\n", $1,$6
    }
    BEGIN{FS=":"}
    {
        myprint()
    }' /etc/passwd
```

В примере используется заданная нами функция myprint, которая выводит данные.
END_COMMENT