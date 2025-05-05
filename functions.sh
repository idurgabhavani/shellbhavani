#!/bin/bash

ID=$(id -u)

VALIDATE(){

    if [ $? -ne 0 ]
    then
        echo "instaling  is failed "
        exit 1
    else
        echo "installing   is success"
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

VALIDATE

yum install git -y

VALIDATE
