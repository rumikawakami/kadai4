#!/bin/bash


# 引数の数が少ないもしくは多い場合
if [ $# -ne 2 ]; then
	echo "input 2 argments" 1>&2
	exit 1
fi

# 引数が自然数でない場合
for arg in "$1" "$2"; do
  if ! [[ "$arg" =~ ^[1-9][0-9]*$ ]]; then
	  echo "input natural number" 1>&2
	 exit 1
  fi
done 

# ユークリッドの互助法で最大公約数を計算する
gcd() {
    local a=$1
    local b=$2
    while [ "$b" -ne 0 ]; do
        local temp=$b
        b=$((a % b))
        a=$temp
    done
    echo "$a"
}


# 最大公約数を表示
gcd "$1" "$2"

