##!/bin/bash -x

amount=100
goal=0
rounds=0
wins=0
while [ $amount -ne 0 ] && [ $goal -lt 200 ]
do
	rounds=$(($rounds + 1))
	result=$((RANDOM % 2))
	if [ $result -eq 1 ]
	then
		wins=$(($wins+1))
		goal=$((goal+1))
		amount=$(($amount+1))
		echo $rounds $amount "Win" $wins
	elif [ $result -eq 0 ]
	then
		amount=$(($amount-1))
		echo $round ". Lose"
	fi
done
