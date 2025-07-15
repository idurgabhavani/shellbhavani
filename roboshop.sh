#!/bin/bash

AMI=ami-0150ccaf51ab55a51 # THESE WE WILL GET FROM INSTANCE
SG_ID=sg-07f6c69ef91259553 # SECIROTU GROUP ID
INSTANCE=("mongodb" "redis" "mysql" "rabitmq" "catalogue" "user" "cart" "shipping" "payment" "dispatch" "web")

for i in "${INSTANCE[@]}"
do
    if [ $i == "mongodb" ] || [ $i == "mysql" ] || [ $i == "shipping" ]
    then
        INSTANCE_TYPE="t3.small"
    else
        INSTANCE_TYPE="t2.micro"
    fi

    aws ec2 run-instances --image-id $AMI --instance-type $INSTANCE_TYPE --key-name bhavani --security-group-ids $SG_ID
    
done
