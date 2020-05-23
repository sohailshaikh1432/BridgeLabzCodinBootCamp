##!/bin/bash -x
headTarget=0
tailTarget=0
while [ $headTarget -ne 11 ] && [ $tailTarget -ne 11 ]
do
	toss=$((RANDOM % 2))
	if [ $toss -eq 0 ]
	then
		echo "Tails"
		tailTarget=$(($tailTarget + 1))
	elif [ $toss -eq 1 ]
	then
		echo "Heads"
		headTarget=$(($headTarget + 1))
	fi
	echo $headTarget $tailTarget;
done

