#!/bin/bash -x

awk '{
	if($3 == "CAPTAIN"){
		sum+=$7
	}
}
END{
	print "\nTotal Pay of CAPTAINS is " sum
}' data.csv
