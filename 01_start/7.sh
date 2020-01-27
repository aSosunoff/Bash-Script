#!/usr/bin/env bash

var1=$(( 5 + 5 ))
echo $var1
:<<'END_COMMENT'
# Математические операции

Для выполнения математических операций в файле скрипта можно использовать конструкцию вида $((a+b)):

```bash
#!/bin/bash
var1=$(( 5 + 5 ))
echo $var1
var2=$(( $var1 * 2 ))
echo $var2
```
END_COMMENT