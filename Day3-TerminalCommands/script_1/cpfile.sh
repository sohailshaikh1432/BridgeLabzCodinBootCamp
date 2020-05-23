#!/bin/bash -x

for file in `ls *.txt`;
do
	fold=`echo $file | awk -F. '{print $1}'`;
	if [ -d $fold ]
	then
		rm -r $fold;
	fi
	mkdir $fold;
	cp $file $fold;
done
