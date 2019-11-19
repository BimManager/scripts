#!/bin/bash

cat /etc/passwd | \
    awk -v l1="$FT_LINE1" -v l2="$FT_LINE2" \
	-F':' 'NR % 2 == 0 && NR >= l1 && NR <= l2 { print $1 }' | \
    rev | \
    sort -r | \
    awk '{ printf "%s, ", $1 }' | \
    rev | \
    sed 's/,/./' | \
    rev 
