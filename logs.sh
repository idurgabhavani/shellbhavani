#!/bin/bash

ID=$(id -u)

echo "script name : $0 "


VALIDATE(){

    if [ $1 -ne 0 ]
    then
        echo "$2  is failed "
        exit 1
    else
        echo "$2   is success"
    fi

}
if [ $ID -ne 0 ]
then
    echo " error please run this script with root accrss "
    exit 1 #you can give other than zero
else
    echo " you are root user"
fi

yum install mysql -y

VALIDATE $? "installing MYSQL"

yum install git -y

VALIDATE $? "installing GIT"

