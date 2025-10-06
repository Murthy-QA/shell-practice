#!/bin/bash

echo " Enter a Number"
read NUMBER
if [$NUMBER -le 100]; then
    echo "Number is less than 100"
else
    echo "Number is greater than or equal to 100"
fi