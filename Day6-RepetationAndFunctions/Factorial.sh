#!/bin/bash -x

echo "Enter Number to find Factorial: "
read num
factorial=1
for ((count=1; count<=num; count++))
do
	factorial=$(($factorial * count));
done
echo "Factorial = $factorial";
