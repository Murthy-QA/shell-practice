#!/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ]; then
    echo "ERROR: Please run the script with root"
    exit 1
fi

VALIDATE()
{
    if [ $? -ne 0 ]; then
        echo "INSTALLING: $1 is failure"
        exit 1
    else
    echo "$1 Installed successfully"
    fi
}

dnf install $1 -y
VALIDATE $1