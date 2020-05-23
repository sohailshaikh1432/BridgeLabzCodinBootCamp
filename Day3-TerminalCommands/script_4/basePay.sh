#!/bin/bash -x

awk '{
	if($4>10000){
		print $2 " " $7
	}
}' data.csv


