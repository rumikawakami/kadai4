#!/bin/bash

# Script.shのテスト
tmp=/tmp/$$

ERROR_EXIT(){
	echo $1 1>&2
	rm $tmp-*
	exit 1
}

# test 1: 入力が足りない場合
echo "input 2 argments" > $tmp-ans
./script.sh 2> $tmp-result && ERROR_EXIT "1-1: execusion error"
diff $tmp-ans $tmp-result || ERROR_EXIT "1-1: message is diff"
echo "test 1-1 passed"

# test 2: 入力が多い場合

# test 3: 一致した場合

# test 4: 一致しなかった場合


rm $tmp-*
