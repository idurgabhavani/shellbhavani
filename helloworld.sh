#!/bin/bash

echo " please enter numner1 "
read x
echo " please enter number2 "
read y
echo " sum of the two numers is "
sum=$(($x+$y))
echo " total sum= $sum "
echo "how many args passed : $# "
echo "all args passed : $@ "
echo "script name : $0 "