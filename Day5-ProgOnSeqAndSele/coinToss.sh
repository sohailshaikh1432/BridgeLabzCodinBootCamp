#!/bin/bash -x

coinTossResult=$((RANDOM % 2));
if [ $coinTossResult -eq 1 ]
then
	echo "Heads";
else
	echo "Tails";
fi
