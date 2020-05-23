#!/bin/bash -x

echo "Enter a range to view prime numbers: "
echo "Min: "
read min
echo "Max: "
read max
for ((nums=min; nums<=max; nums++))
do
	check=$nums
	flag=0;
	for((count=2; count<(($check/2)); count++))
	do
		if [ $(($check % $count)) -eq 0 ]
		then
			flag=0;
			break;
		else
			flag=1;
		fi
	done
	if [ $flag -eq 1 ]
	then
		echo "$check"
	fi
done
