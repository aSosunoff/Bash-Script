#!/usr/bin/env bash

# Check paramerer
if [ -n "$1" ]; then
    echo "First parameter is ( $1 )"
    echo "The were ( $# ) parameters passed"
    echo "The last parameter is ( ${!#} )"
    echo $*
    echo $@
    
    echo $'\n'
    echo "echo param by a for"
    for item in "$*"; do
        echo "$item"
    done
    
    echo $'\n'
    echo "echo param by a for"
    for item in "$@"; do
        echo "$item"
    done
    
    echo $'\n'
    echo "echo param by a while"
    while [ -n "$1" ]; do
        echo $1
        shift
    done
else
    echo 'Parameter is not found'
fi

