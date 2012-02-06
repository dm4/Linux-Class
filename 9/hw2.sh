#!/bin/bash

[ -z "$1" ] && echo '請輸入目錄' && exit
[ ! -d "$1" ] && echo '請輸入目錄' && exit

trace() {
    if [ -d "$1" ]; then
        for file in "$1/"*.txt
        do
            echo "$file"
            name=`echo "$file" | sed 's/\.txt$/.log/'`
            echo '#--Homework2--#' >> "$name"
            cat "$file" >> "$name"
            echo "Create $name"
        done
        for file in "$1/"*
        do
            [ -d "$file" ] && trace "$file"
        done
    fi
}

trace "$1"
