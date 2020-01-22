#!/usr/bin/env bash

echo "/bin/" | sed 's/\/bin\//csh/'
echo "/bin/" | sed 's!/bin/!csh!'
:<<////
Символы-разделители

Представьте, что нужно заменить /bin/bash на /bin/csh в файле /etc/passwd. Задача не такая уж и сложная:

Однако, выглядит всё это не очень-то хорошо. Всё дело в том, что так как прямые слэши используются в роли символов-разделителей, такие же символы в передаваемых sed строках приходится экранировать. В результате страдает читаемость команды.

К счастью, sed позволяет нам самостоятельно задавать символы-разделители для использования их в команде замены. Разделителем считается первый символ, который будет встречен после s:

В данном случае в качестве разделителя использован восклицательный знак, в результате код легче читать и он выглядит куда опрятнее, чем прежде.
////