#!/usr/bin/env bash

if [ 1 -eq 1 ]; then
    echo true;
else
    echo false;
fi
:<<////
Управляющая конструкция if-then

В некоторых сценариях требуется управлять потоком исполнения команд. Например, если некое значение больше пяти, нужно выполнить одно действие, в противном случае — другое. Подобное применимо в очень многих ситуациях, и здесь нам поможет управляющая конструкция if-then. В наиболее простом виде она выглядит так:
////