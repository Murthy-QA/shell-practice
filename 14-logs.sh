#!/bin/bash

R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"

USERID=$(id -u)
LOGS_FOLDER="/var/log/shell-script"
SCRIPT_NAME=$( echo $0 | cut -d "." -f1 )
LOG_FILE="$LOGS_FOLDER/$SCRIPT_NAME.log" # /var/log/shell-script/16-logs.log

mkdir -p $LOGS_FOLDER
echo "Script started executed at: $(date)" | tee -a $LOG_FILE

if [ $USERID -ne 0 ]; then
    echo "$R ERROR: Please run the script with root $N"
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
    dnf install nginx -y && >> $LOG_FILE
    VALIDATE $? "nginx"
else
    echo -e "$Y Already nginx installed..SKIP $N"
fi

dnf list installed mysql
if [ $? -ne 0 ]; then
    dnf install mysql -y && >> $LOG_FILE
    VALIDATE $? "mysql"
else
    echo -e "$Y Already mysql installed..SKIP $N"
fi

dnf list installed python3
if [ $? -ne 0 ]; then
    dnf install python3 -y && >> $LOG_FILE
    VALIDATE $? "python3"
else
    echo -e "$Y Already python3 installed..SKIP $N"
fi