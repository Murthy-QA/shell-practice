#!/bin/bash

read NUMBER
if [$(($NUMBER -eq 100))]; then
    echo "Number is equal to 100 : $NUMBER"
else
    echo "Number is not equal to 100 : $NUMBER"
fi