#!/usr/bin/env bash

# Глобальные переменные
function concatFn {
	text="$text XXX"
}

read -p "Enter text: " text
concatFn
echo $text
