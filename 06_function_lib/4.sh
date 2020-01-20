#!/usr/bin/env bash

# Локальные переменные
function concatFn {
	local t="$1 XXX"
	echo $t
}

read -p "Enter text: " text
r=$(concatFn $text)
echo $r
