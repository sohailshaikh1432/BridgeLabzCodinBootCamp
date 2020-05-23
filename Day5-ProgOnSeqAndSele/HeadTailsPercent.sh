#!/bin/bash -x

read -p "Enter number of times to toss a coin: " numberOfTimes
heads=0
tails=0
for ((count=0; count<numberOfTimes; count++))
do
	tossStatus=$((RANDOM%2))
	if [ $tossStatus -eq 1 ]
	then
		((heads++))
	else
		((tails++))
	fi
done

headPercent=$((heads * 100 / numberOfTimes))
tailPercent=$((tails * 100 / numberOfTimes))

echo "Heads Percentage: "$headPercent
echo "Tails Percentage: "$tailPercent
