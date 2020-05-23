#!/bin/bash -x

echo "Enter Three Numbers: "
read a
read b
read c

op1=$((a+b*c));
op2=$((c+a/b));
op3=$((a%b+c));
op4=$((a*b+c));

min=$op1;
max=$op1;

compare(){
	if [ $1 -gt $2 ]
	then
		max=$1;
	elif [ $1 -lt $3 ]
	then
		min=$1
	fi
}

compare $op2 $max $min
compare $op3 $max $min
compare $op4 $max $min

echo "Max: $max  Min: $min";
