#!/bin/bash

# Script.shのテスト

EXIT(){
	echo $1 1>&2
	exit 1
}

# test 1: 入力が足りない場合
ans="error: 引数が多い"
result=$(./script.sh)
[ ${ans} = ${result} ] && echo "test1-1 ok" || EXIT "test 1-1"

result=$(./script.sh 1)
[ ${ans} = ${result} ] && echo "test1-1 ok" || EXIT "test 1-2"

# test 2: 入力が多い場合
ans="error: 引数が多い"
result=$(./script.sh 1 2 3)

# test 3: 一致した場合
ans="equal"

# test 4: 一致しなかった場合
ansd="not equal"
