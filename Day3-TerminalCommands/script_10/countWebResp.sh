#!/bin/bash -x

awk '{print $10}' "access.log" | sort | uniq -c | sort -nr | head -n4
