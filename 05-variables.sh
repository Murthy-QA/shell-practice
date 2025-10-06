#!/bin/bash

START_TIME=$(date)
sleep 10
END_TIME=$(date)
TOTAL_TIME=$($START_TIME-$END_TIME)
echo "Total time is : $TOTAL_TIME"