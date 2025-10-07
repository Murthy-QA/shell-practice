#!/bin/bash

R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"

USERID=$(id -u)

if [ $USERID -ne 0 ]; then
    echo "ERROR: Please run the script with root"
    exit 1
fi

VALIDATE()
{
    if [ $1 -ne 0 ]; then
        echo -e "$R INSTALLING: $2 is failure $N"
        exit 1
    else
        echo -e "$G Installed $2 successfully $N"
    fi
}

dnf list installed nginx
if [ $? -ne 0 ]; then
    dnf install nginx -y
    VALIDATE $? "nginx"
else
    echo -e "$Y Already nginx installed..SKIP $N"
fi

dnf list installed mysql
if [ $? -ne 0 ]; then
    dnf install mysql -y
    VALIDATE $? "mysql"
else
    echo -e "$Y Already mysql installed..SKIP $N"
fi

dnf list installed python3
if [ $? -ne 0 ]; then
    dnf install python3 -y
    VALIDATE $? "python3"
else
    echo -e "$Y Already python3 installed..SKIP $N"
fi