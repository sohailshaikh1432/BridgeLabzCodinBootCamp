#!/bin/bash -x

echo "Enter a number to check Prime or not: "
read  check
flag=0;
for((count=2; count<(($check/2)); count++))
do
	if [ $(($check % $count)) -eq 0 ]
	then
		flag=1;
		break;
	else
		flag=0;
	fi
done
if [ $flag -eq 1 ]
then
	echo "Not a prime number !"
elif [ $flag -eq 0 ]
then
	echo "Prime number !"
fi
