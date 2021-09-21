#!/bin/bash 
exec_test () {
	echo $1
	echo "require './app/simple'" > tmp
	cat $1 >> tmp
	ruby tmp	
	rm tmp
	echo ''
}

# for each testcase run

if [ $# -eq 0 ]; then
	for case in test/test* ; do
		exec_test $case
	done
else
	exec_test 'test/test_'$1
fi
