#!/bin/bash
x="NARASIMHAMURTHY"
grep -o "A" <<<"$x" | wc -l

echo "Enter a Number"
read NUMBER
if [ $NUMBER -gt 0 ]; then
    echo "It is a postive number"
elif [ $NUMBER -lt 0 ]; then
    echo "It is a negative number"
else
    echo "It is number with 0"
fi
