#!/bin/bash

ID=$(id -u)

if [ $ID ne 0 ]
then
    echo -e "$R ERROR: please run this script with root access 4N"
    exit 1
else
    echo "you are not root  user"
fi

echo " all argumaents passed : $@ "
