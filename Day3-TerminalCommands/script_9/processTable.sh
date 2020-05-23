#!/bin/bash

ps -elf |
awk '{
	print $2"	"$3"	"$6
}'
