#!/bin/bash

file=/etc/passwd

if [ ! -f $file ]
then
    echo -e "souce directory : $file does not exists "
fi

while IFS=":" read -r username password user_id group_id user_fullname home_dir shell_path
do
    echo "username: $username"
    echo "userid= $user_id"
    echo :groudi=$group_id
done