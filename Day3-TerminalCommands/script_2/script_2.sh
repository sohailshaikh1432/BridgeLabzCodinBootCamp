#!/bin/bash -x

for file in `ls *.log.1`
do
	da=`date "+%d%m%Y"`
	name=`echo $file | awk -F. '{print $1"-"}'`
	full=`echo $name$da".log"`
	rm $file
	touch $full
	
done
ls *.log
