#!/bin/bash -x

awk '{print $1}' "access.log" | sort | uniq -c | sort -nr | head -n4

