#!/bin/bash -x

awk '{
	sum += $4
}
END{
	print "Average BasePay is "sum/NR
}' data.csv
