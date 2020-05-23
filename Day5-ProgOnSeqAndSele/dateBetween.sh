#!/bin/bash -x

echo "Enter day: ";
read day;
echo "Enter month: ";
read month;
if [ $day -lt 31 -a $month -lt 12 ]
then
	if [ [ [ $day -ge 20 -o $day -le 31] -a [ $month -eq 3 ] ] -o [ [ $day -ge 1 -o $day -le 30 ] -a [ $month -eq 4 ] ] -o [ [ $day -ge 1 -o $day -le 31 ] -a [ $month -eq 5 ] ] -o [ [ $day -ge 1 -o $day -le 20 ] -a [ $month -eq 6 ] ] ]
	then
		echo "False";
	else
		echo "True";
	fi
else
	echo "Invalid Date";
fi
