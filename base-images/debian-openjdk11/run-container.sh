#!/usr/bin/env bash

if [ $# -ne 1 ] ; then
    echo "Usage: ./run-container.sh <my-tag>"
    echo "Examples:"
    echo "./run-container.sh 0.1"
    exit 1
fi

MY_NAME="gabelbombe/debian-openjdk11"
MY_TAG=$1

docker run -it --entrypoint /bin/bash $MY_NAME:$MY_TAG
