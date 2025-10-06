#!/bin/bash

echo "Enter a Number"
read NUMBER
if [$(($NUMBER)) -le 10]; then
    echo "Number is less than 10"