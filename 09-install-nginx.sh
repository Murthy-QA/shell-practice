#!/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ]; then
    echo "ERROR: Please run the script with root"
    exit 1
fi

dnf install nginx -y

if [ $? -ne 0 ]; then
    echo "INSTALLING: NGINX is failure"
    exit 1
else
    echo "NGINX installed successfully"
fi