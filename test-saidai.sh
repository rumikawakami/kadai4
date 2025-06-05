#!/bin/bash

# saidaikouyakusu.shのテスト
tmp=/tmp/$$
echo "input 2 argments" > $tmp-args
echo "input natural number" > $tmp-nat

ERROR_EXIT(){
	echo "$1" >&2
	rm -f $tmp-*
	exit 1
}

# test 1: 引数が一致しない場合
./saidaikouyakusu.sh 2> $tmp-ans && ERROR_EXIT "error in test1-1"
diff $tmp-ans $tmp-args || ERROR_EXIT "1-1: error in test1-2"
echo "test 1-1 passed"

# test 2: 自然数が入力されない場合
./saidaikouyakusu.sh abc 4 2> $tmp-ans && ERROR_EXIT "error in test2-1"
diff $tmp-ans $tmp-nat || ERROR_EXIT "error in test2-2"
echo "test 2-1 passed"


rm $tmp-*
