#!/bin/bash

echo "Enter a Number"
read NUMBER
if [ $(($NUMBER)) -le 100 ]; then
    echo "Given number $NUMBER is less than 100"
elif [ $(($NUMBER)) -eq 100 ]; then
    echo "Given number $NUMBER is  equal to 100"
else
    echo "Given number $NUMBER is  greater than 100"
fi