#!/bin/bash -x

echo "Enter Number to find Prime Factors: "
read number

for ((count=2; $((count * count))<=$number; count++))
do
	while [ $(($number % $count)) -eq 0 ]
	do
		echo "$count";
		number=$(($number/$count))
	done
done
if [ $number > 1 ]
then
	echo "$number"
fi
