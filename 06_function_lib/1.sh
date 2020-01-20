#!/usr/bin/env bash

function functionTest {
	echo "$1" # arguments are accessible through FunctionTest, echo "$1" # arguments are accessible through FunctionTest, ,...,...
	echo "$2" # arguments are accessible through FunctionTest, echo "$1" # arguments are accessible through FunctionTest, ,...,...
	echo '1 + 1'
	return $[1 + 1]
}

functionTest 1 2
echo "return value from functionTest is => $?"