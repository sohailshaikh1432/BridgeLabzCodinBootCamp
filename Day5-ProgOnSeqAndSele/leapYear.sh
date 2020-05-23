

echo "Enter Year: ";
read year;
flag = 0;
if [ $(($year % 4)) -eq 0 ]
then
	if [ $(($year%100)) -eq 0 ]
	then
		if [ $(($year%400)) -eq 0 ]
		then
			flag=1;
		else
			flag=0;
		fi
		flag=1;
	fi
fi

if [ flag -eq 1 ]
then
	echo "not Leap Year !";
else
	echo " a Leap Year !"
fi
