#!/bin/bash -x

if [ -z "$usersecret" ]
then
	export usersecret="dH34xJaa23";
else
	echo "Already set !";
fi
echo "Value of environment variable usersecret: "$usersecret;
