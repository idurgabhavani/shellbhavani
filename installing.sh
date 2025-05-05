#!/bin/bash

ID=$(id -u)

if [ $ID -ne 0 ]
then
    echo " error please run this script with root accrss "
    exit 1 #you can give other than zero
else
    echo " you are root user"
fi

yum install mysql -y
