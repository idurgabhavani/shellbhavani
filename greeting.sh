#!/bin/bash

NAME=""
WISHES=""

USAGE(){

    echo "USAGE: : $(basename $0) -n <name> -w <whishes>"
    echo "options: :"
    echo " -n, specify the name (mandatory)"
    echo " -w, specify the wishes ex good morning"
    echo " -h, Display help and exit"
}

while getopts ":n:w:h" opt; do
    case $opt in
        n) NAME="$OPTARG"
        w) WISHES="$OPTARG"
        h|*) usage; exit;;
        :) USAGE; exit;;

    esac
done

if [ -z "$NAME" ] || [ -z "$WISHES" ]; then
    echo "ERROR :both -n and -w are mandatorey options "
    USAGE
    exit 1
fi

echo " Hello $NAME. $WISHES. I have  been learning shell scripting "
