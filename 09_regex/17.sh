#!/usr/bin/env bash

echo $PATH | awk '
BEGIN{
    RS=":"
}
{print $0}'
:<<'END_COMMENT'
# Пример
END_COMMENT