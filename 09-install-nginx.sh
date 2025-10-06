#!/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0]; then
    echo "ERROR: Please run the script with root"
    exit 1

dnf install nginx -y

if [$? -ne 0]; then
    echo "INSTALLING: MYSQL is failure"
    exit 1
else
    echo "MYSQL installed successfully"