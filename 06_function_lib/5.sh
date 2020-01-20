#!/usr/bin/env bash

# Передача функциям массивов в качестве аргументов
function text {
	echo "Parameter $@"
	local arr=$@
	echo ${arr[*]}
}
myArr=(1 2 3 4 5)
echo "The original array is: ${myArr[*]}"
text ${myArr[*]}