#!/bin/bash -x
max=0;
min=0;

for i in {1..5}
do
	num=$((RANDOM % 899 + 100));
	if [ $i -eq 1 ]
	then
		max=$num;
		min=$num;
	else
		if [ $num -gt $max ]
		then
        		max=$num;
      		fi
		if [ $num -lt $min]
		then
			min=$num;
		fi
 	fi
done
echo $max"  "$min;

