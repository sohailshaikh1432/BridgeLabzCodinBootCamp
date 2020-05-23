#!/bin/bash -x

echo "Enter Power of 2:"
read power
count=1
powOfTwo=1
while [ $powOfTwo -ne 256 ] && [ $count -le $power ]
do
	powOfTwo=$(($powOfTwo*2))
	count=$(($count+1))
done
