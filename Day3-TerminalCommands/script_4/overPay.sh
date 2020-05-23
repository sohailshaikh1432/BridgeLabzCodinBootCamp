#!/bin/bash -x

awk '{
	if($5 > 7000 && $5 < 10000){
		print "\n" $3 "  " $5
	}
}' data.csv
