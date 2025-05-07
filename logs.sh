#!/bin/bash

ID=$(id -u)
TIMESTAMP=$(date +%F-%H-%M-%S)
R="\e[31m"
G="\e[32m"
N="\e[0m"
LOGFILE="tmp/$0-$TIMESTAMP.log"
echo "script name : $0 "


VALIDATE(){

    if [ $1 -ne 0 ]
    then
        echo "$2  is $G failed "
        exit 1
    else
        echo "$2   is  success"
    fi

}
if [ $ID -ne 0 ]
then
    echo " $G error please run this script with root accrss "
    exit 1 #you can give other than zero
else
    echo " you are root user"
fi

yum install mysql -y &>> $LOGFILE

VALIDATE $? "installing MYSQL"

yum install git -y &>> $LOGFILE

VALIDATE $? "installing GIT"

