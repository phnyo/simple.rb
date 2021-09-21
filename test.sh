#!/bin/bash

# for each testcase run
for case in test/test* ; do
	echo "require './simple'" > tmp
	cat $case >> tmp
	ruby tmp	
	rm tmp
	echo ''
done
