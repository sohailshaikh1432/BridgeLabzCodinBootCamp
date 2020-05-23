##!/bin/bash -x

echo "Enter highest power: ";
read power
for ((count=0; count<=$power; count++))
do
	if [ $count -eq 0 ]
	then
		var=1
		echo "2^$count = $var";
		continue;
	else
		var=$((var * 2));
		echo "2^$count = $var";
	fi
done
