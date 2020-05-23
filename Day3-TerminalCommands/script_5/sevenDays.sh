#!/bin/bash -x
newVar=`find . -mtime -7 -name '*.txt'`
	mv $newVar backup/
