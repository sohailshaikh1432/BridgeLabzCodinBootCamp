#!/bin/bash -x

read -p "Enter number to check tense place: " num
if [ $num -eq 1 ]
then
	echo "Unit";
elif [ $num -eq 10 ]
then
        echo "Ten";
elif [ $num -eq 100 ]
then
                echo "Hundred";
elif [ $num -eq 1000 ]
then
                echo "Thousand";
elif [ $num -eq 10000 ]
then
                echo "Ten Thousand";
elif [ $num -eq 100000 ]
then
                echo "Lakh";
elif [ $num -eq 1000000 ]
then
                echo "Ten Lakh";
elif [ $num -eq 10000000 ]
then
                echo "Crore";
elif [ $num -eq 100000000 ]
then
                echo "Ten Crore";
else
		echo "Invalid Input !";
fi
