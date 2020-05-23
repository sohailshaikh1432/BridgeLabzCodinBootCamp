#!/bin/bash -x

echo "Enter range between 0-100"
read -p "Start: " min
read -p "End: " max
elementCount=0
for ((count=min; count<max; count++))
do
	temp=$count
	r=$((temp % 10))
	temp=$((temp / 10))
	if [ $r -eq $temp ]
	then
		arr[elementCount++]=$count
	fi
done
echo ${arr[@]}
