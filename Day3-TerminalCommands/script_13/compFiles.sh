#!/bin/bash -x

for var in `diff original/main.txt updated/main.txt`
do
	cp original/main.txt updated/main.txt
	break
done
