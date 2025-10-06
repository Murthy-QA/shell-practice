#!/bin/bash

echo "Enter a Number"
read NUMBER
if [($NUMBER) -le 10]; then
    echo "Number is less than 10"
else
    echo "Number is greater than or equal to 10"
fi