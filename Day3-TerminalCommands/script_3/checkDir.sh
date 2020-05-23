#!/bin/bash -x

for file in `ls -d */`
do
	if test -d "$file/"
	then
		rm -r $file
	fi
	mkdir $file
done
