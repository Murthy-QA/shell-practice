#!/bin/bash

echo "Enter a Number"
read NUMBER
if [$(($NUMBER)) -eq 10 ]; then
    echo "Given number $NUMBER is equal to 10"
else
    echo "Given number $NUMBER is not equal to 10"
fi