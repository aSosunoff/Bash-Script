#!/usr/bin/env bash

function test {
	echo $[10 + 9]
}
result=$(test)
echo $result
