#!/usr/bin/env bash

# Создание собственного перенаправления вывода
exec 3>2_1.txt
echo "This should display on the screen"
echo "and this should be stored in the file" >&3
echo "And this should be back on the screen"