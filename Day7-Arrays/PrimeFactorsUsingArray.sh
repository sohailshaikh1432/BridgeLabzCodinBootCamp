#!/bin/bash -x

echo "Enter Number to find Prime Factors: "
read number
keepRec=0
while [ $((number % 2)) -eq 0 ]
do
	arr[keepRec++]=2
        number=$(($number / 2))
done

for ((count=3; ((count * count))<=$number; count=$(($count+2))))
do
	while [ $((number % count)) -eq 0 ]
	do
		arr[keepRec++]=$count
		number=$((number / count))
	done
done

if [ $number -gt 2 ]
then
	arr[keepRec++]=$number
fi

echo ${arr[@]}
