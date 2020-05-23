#!/bin/bash -x

awk '{print $11}' "access.log" | sort | uniq -c | sort -nr | head -n4
cat access.log | awk '$4~/Sep/{print $11}' | sort | uniq -c | sort -r | head -4

