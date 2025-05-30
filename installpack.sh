#!/bin/bash

ID=$(id -u)

TIMESTAMPE=$(date +%F-%H-%M-%S)
LOGFILE="/tmp/$0-$TIMESTAMPE.log"

echo "script   started executing at $TIMESTAMP" &>> $LOGFILE

VALIDATE(){
    if [$1 -ne 0] 
    then
        echo -e "FAIELD"
    else
        echo -e "SUCCESS"
    fi
}

if [ $ID ne 0 ]
then
    echo " ERROR: please run this script with root access 4N"
    exit 1
else
    echo "you are  root  user"
fi

#echo " all argumaents passed : $@ "

for package in $@
do
    yum list installed $package
    if [ $? -ne 0 ]
    then
        yum insall $package -y
        VALIDATE $? "installation of $package "
    else
        echo "$package is already INSALLED .. $Y skipping"
    fi
done
