#!/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ]; then
    echo "ERROR: Please run the script with root"
    exit 1
fi

VALIDATE()
{
    if [ $1 -ne 0 ]; then
        echo "INSTALLING: $2 is failure"
        exit 1
    else
    echo "$2 installed successfully"
    fi
}

dnf install python3 -y


dnf install zip -y
