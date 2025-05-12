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
}

if [ $ID ne 0 ]
then
    echo -e " ERROR: please run this script with root access 4N"
    exit 1
else
    echo "you are not root  user"
fi

#echo " all argumaents passed : $@ "

for package in $@
do
    yum list installed $package
    if [$? -ne 0]
    then
        yum insall $package -y
        VALIDATE $? "installation of $package "
    else
        echo -e "$package is already INSALLED .. $Y skipping"
done
